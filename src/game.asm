; Copyright (C) 2024 iProgramInCpp

; ** SUBROUTINE: h_comp_addr
; desc:    Computes the address of the 64 byte row of tiles into lvladdr.
; arguments:
;     x - X coordinate
; clobbers: a
h_comp_addr:
	; the address goes as follows:
	; 0110 0xxx xxxy yyyy
	lda #<areaspace
	sta lvladdr
	lda #>areaspace
	sta lvladdrhi
	txa
	lsr
	lsr
	lsr             ; chop off the first 3 bits
	and #%00000111
	clc
	adc lvladdrhi
	sta lvladdrhi
	txa
	ror
	ror
	ror
	ror
	and #%11100000  ; put the 3 LSBs of X in the lvladdr
	sta lvladdr     ; note: need to ror 4x because rotation also involves the carry bit
	rts

; ** SUBROUTINE: h_get_tile
; desc:    Gets the value of a tile in loaded areaspace for the horizontal layout
;          (equivalent of the C code "areaspace[x * 32 + y]")
; arguments:
;     x - X coordinate
;     y - Y coordinate
; returns:  a - Tile value
; clobbers: a
;
; NOTE for h_get_tile1: the Y coordinate must be in A when you call!
h_get_tile:
	jsr h_comp_addr
	lda (lvladdr), y; A = (&areaspace[x * 32])[y]
	rts

; ** SUBROUTINE: h_set_tile
; desc:    Sets the value of a tile in loaded areaspace for the horizontal layout
;          (equivalent of the C code "areaspace[x * 32 + y]")
; arguments:
;     x - X coordinate
;     y - Y coordinate
;     a - Tile value
; clobbers: a
h_set_tile:
	pha
	jsr h_comp_addr
	pla
	sta (lvladdr), y
	rts

; ** SUBROUTINE: h_flush_pal_r_cond
; desc:    Flushes a generated palette column in temppal to the screen if gs_flstpalR is set
; assumes: PPUCTRL has the IRQ bit set to zero (dont generate interrupts), increment to 1
h_flush_pal_r_cond:
	lda #gs_flstpalR
	bit gamectrl
	bne h_flush_pal_r
	rts

; ** SUBROUTINE: h_flush_pal_r
; desc:    Flushes a generated palette column in temppal to the screen
; assumes: PPUCTRL has the IRQ bit set to zero (dont generate interrupts), increment to 1
h_flush_pal_r:
	lda #7
	sta debug
	clc
	lda ntwrhead
	sbc #2
	and #$20
	beq h_flupal_high
	ldx #$27
	jmp h_flupal_done
h_flupal_high:
	ldx #$23
h_flupal_done:
	stx y_crd_temp      ; store the high byte of the nametable address there. we'll need it.
	ldx #$C0
	stx x_crd_temp
	lda ntwrhead
	lsr
	clc
	sbc #1
	lsr
	and #7
	clc
	adc x_crd_temp
	sta x_crd_temp
	; need to write 8 bytes.
	ldy #0
h_flupal_loop:
	ldx y_crd_temp
	stx ppu_addr
	ldx x_crd_temp
	stx ppu_addr
	lda temppal, y
	sta ppu_data
	lda #8
	adc x_crd_temp
	sta x_crd_temp
	iny
	cpy #8
	bne h_flupal_loop
	lda #8
	sta debug
	rts

; ** SUBROUTINE: h_flush_col_r
; desc:    Flushes a generated column in tempcol to the screen
; assumes: we're in vblank or rendering is disabled
h_flush_col_r:
	lda #5
	sta debug
	
	; set the increment to 32 in PPUCTRL
	lda ctl_flags
	ora #pctl_adv32
	sta ppu_ctrl
	
	; the PPU address we want to start writing to is
	; 0x2000 + (ntwrhead / 32) * 0x400 + (ntwrhead % 32)
	lda ntwrhead
	ldy #$20
	and #$20
	beq h_dontadd4
	iny
	iny
	iny
	iny
h_dontadd4:
	lda ntwrhead
	and #$1F
	tax
	jsr ppu_loadaddr
	
	; start writing tiles.
	; each iteration will write 2 character tiles for one metatile.
	ldy #0
h_fls_wrloop:
	lda tempcol, y
	sta ppu_data
	iny
	cpy #$1E
	bne h_fls_wrloop

	; advance the write head but keep it within 64
	ldx ntwrhead
	inx
	txa
	and #$3F
	sta ntwrhead
	
	; restore the old PPUCTRL
	lda ctl_flags
	sta ppu_ctrl
	
	lda #6
	sta debug
	rts

h_gen_addyoff:
	pha
	tya
	clc
	adc lvlyoff
	cmp #$1E
	bcc :+
	sec
	sbc #$1E
:	tay
	pla
	rts
h_gen_subyoff:
	pha
	tya
	sec
	sbc lvlyoff
	bpl :+
	clc
	adc #$1E
:	tay
	pla
	rts

; ** SUBROUTINE: h_gener_col_r
; desc:    Generates a vertical column of characters corresponding to the respective
;          metatiles in area space, on the right side of the scroll seam.  Also
;          generates the next column of tiles and the palette if necessary.
; assumes: PPUCTRL has the IRQ bit set to zero (dont generate interrupts)
h_gener_col_r:
	lda #4
	sta debug
	lda #gs_scrstopR
	bit gamectrl
	beq :+
	rts
:	ldx ntwrhead              ; compute the areaspace address
	jsr h_comp_addr
	ldy lvlyoff               ; start writing tiles.
	sty temp6
	ldy #0                    ; start writing tiles.
	sty temp7
h_gen_wrloop:                 ; each iteration will write 1 character tile for one metatile.
	lda (lvladdr), y
	tax
	lda metatiles, x
	sty temp7                 ; store the current y into temp7
	ldy temp6                 ; load the offsetted version into temp6
	sta tempcol, y
	iny
	cpy #$1E
	bne :+
	ldy #0
:	sty temp6
	ldy temp7                 ; restore the current y into temp7
	iny
	cpy #$1E
	bne h_gen_wrloop

	lda #gs_flstcolR          ; set the gamectrl gs_flstcolR flag
	ora gamectrl
	sta gamectrl
	jsr h_gener_ents_r
	jsr h_gener_mts_r         ; generate a new column of meta-tiles and entities
	lda ntwrhead              ; check if we're writing the 3rd odd column
	and #$03
	cmp #$03
	beq :+
	rts
:	ldy #0                    ; start reading palette data.
h_pal_wrloop:
	jsr gm_read_pal
	cmp #$FE
	beq h_pal_haveFE          ; break out of this loop
	cmp #$FF
	bne h_pal_noFF
	
	lda palrdheadlo
	bne :+
	dec palrdheadhi
:	dec palrdheadlo
	
	lda #0
h_pal_noFF:
	sta temppal,y
	iny
	cpy #8
	bne h_pal_wrloop
h_pal_haveFE:
	lda #gs_flstpalR
	ora gamectrl
	sta gamectrl
	rts
; significance of palette combinations:
; $FE - Re-use the same palette data as the previous column
; $FF - End of palette data

; ** FEATURE: h_genertiles_dup
; desc:    Generates a column of metatiles from 2 bytes.
; args:    A - the dup data, Y - the Y position to start placing at
;
; The format in bytes for the first byte (currently loaded in A) as follows: 001CCCCC TTTTTTTT
h_genertiles_dup:
	and #%00011111
	sta temp1
	tya                   ; transfer the Y coordinate over to add it to temp1
	clc
	adc temp1
	sta temp1             ; store it in temp1
	jsr gm_read_tile      ; read another byte - will be used as our 'brush'
	ldx arwrhead
:   pha
	jsr h_set_tile
	pla
	iny
	cpy temp1             ; check it against the limit
	bne :-
	jmp h_genertiles_cont

; ** FEATURE: h_genertiles_dupair
; desc:    Like h_genertiles_dup but only generates air.
h_genertiles_dupair:
	and #%00011111
	sta temp1
	tya
	clc
	adc temp1
	sta temp1
	ldx arwrhead
	lda #0
:	sta (lvladdr), y
	iny
	cpy temp1
	bne :-
	jmp h_genertiles_cont

h_genertiles_lvlend:
	lda arrdheadlo
	bne :+
	dec arrdheadhi
:	dec arrdheadlo
	
	lda arwrhead          ; arwrhead: 0-63
	rol
	rol
	rol
	rol                   ; rotate that ANDed bit back to bit 0
	and #1
	eor #1            ; subtract 256 from it
	sta camlimithi
	lda arwrhead
	asl
	asl
	asl
	sta camlimit
	lda #gs_scrstopR
	ora gamectrl
	sta gamectrl
	lda ntwrhead
	sta trntwrhead
	lda #0                ; just store 0 as the tile
	jmp h_gentlsnocheck

; ** SUBROUTINE: h_gener_mts_r
; desc:    Generates a column of metatiles ahead of the visual column render head.
h_gener_mts_r:
	lda #gs_scrstopR
	bit gamectrl
	beq :+
	rts
	
:	ldx arwrhead
	jsr h_comp_addr       ; compute the address in (lvladdr)
	
	ldy #0
h_genertiles_loop:
	jsr gm_read_tile
	cmp #$FF              ; if data == 0xFF, then decrement the pointer
	beq h_genertiles_lvlend
	cmp #$A1              ; if data >= 0x21 && data < 0x40, then this is a "duplicate" tile.
	bcc h_gentlsnocheck
	cmp #$C0
	bcs h_gentlsnocheck
	jmp h_genertiles_dup
h_gentlsnocheck:
	cmp #$C1
	bcc :+
	cmp #$E0
	bcs :+
	jmp h_genertiles_dupair
:	sta (lvladdr), y
	iny
h_genertiles_cont:
	cpy #$1E
	bcc h_genertiles_loop
	clc                   ; loop done, increment arwrhead, ensuring it rolls over after 63
	lda #1
	adc arwrhead
	and #$3F
	sta arwrhead
	rts

; ** SUBROUTINE: h_gener_ents_r
; desc:    Generates a column of entities ahead of the visual column render head.
h_gener_ents_r:
	jsr gm_read_ent_na    ; read the byte at the beginning of the stream without advancing
	cmp #ec_dataend       ; if it's a level terminator, simply return.
	bne :+
	rts
:	cmp #ec_scrnext       ; if it's a next screen command, handle it separately and return.
	beq h_generents_scrnext
	sta temp1
	; this is the X coordinate of an entity.
	
	lda arwrhead          ; ok. check if we're on the correct screen
	lsr
	lsr
	lsr
	lsr
	lsr                   ; divide by 32 to get the screen number
	and #1                ; NOTE: assumes arwrhead is between 0-63! change if/when expanding.
	cmp tr_scrnpos
	beq :+
	rts                   ; if the screen numbers are not equal, then return
:	lda arwrhead
	and #$1F              ; cap it between 0-31, this will be an in-screen coordinate.
	asl
	asl
	asl                   ; now check if the X coordinate is bigger than the area write head.
	cmp temp1
	bcs :+                ; if A [(arwrhead & 0x1F) >> 3] >= M [the X coord of the tile]
	rts                   ; then return.
:	jsr gm_adv_ent        ; advance the stream. we will process this entity's data.
	
	; load the rest of the data
	jsr gm_read_ent
	sta temp2             ; store the Y position in temp2
	jsr gm_read_ent
	sta temp3             ; store the entity kind in temp3
	
	; find a free spot in sprite space.
	ldx #0
:	lda sprspace+sp_kind, x
	beq h_generents_spotfound
	inx
	cpx #sp_max
	bne :-
	; no more space found for this entity! :(
	rts
h_generents_spotfound:
	; a sprite slot was found. its slot number is located in the x register.
	lda temp3
	sta sprspace+sp_kind, x
	lda temp2
	sta sprspace+sp_y, x
	
	; load the X coordinate, and add the room beginning pixel and the current screen pos
	clc
	lda temp1
	adc roombeglo
	sta sprspace+sp_x, x
	
	lda tr_scrnpos
	adc roombeghi
	and #1
	sta sprspace+sp_x_hi, x
	
	; initialize other data about this entity
	lda #0
	sta sprspace+sp_entspec1, x
	sta sprspace+sp_entspec2, x
	sta sprspace+sp_x_lo, x
	sta sprspace+sp_y_lo, x
	; done!
	rts
	
	
h_generents_lvlend:
	lda entrdheadlo       ; decrement the stream pointer...
	bne :+
	dec entrdheadhi
:	dec entrdheadlo       ; and return
	rts

h_generents_scrnext:
	jsr gm_adv_ent        ; advance the entity stream
	lda #1                ; NOTE: assumes arwrhead is between 0-63! change if/when expanding.
	eor tr_scrnpos
	sta tr_scrnpos
	rts

; ** SUBROUTINE: gm_increment_ptr
; ** SUBROUTINE: gm_decrement_ptr
; args: x - offset in zero page to (in/de)crement 16-bit address
; clobbers: a
;m_increment_ptr:
;	lda #0
;	sec
;	adc $00, x
;	sta $00, x
;	lda $01, x
;	adc #0
;	sta $01, x
;	rts
;m_decrement_ptr:
;	clc
;	lda $00, x
;	sbc #0
;	sta $00, x
;	lda $01, x
;	sbc #0
;	sta $01, x
;	rts
; ** SUBROUTINE: gm_set_level_ptr
; ** SUBROUTINE: gm_set_room_ptr
; args:
;     x - low byte
;     y - high byte
gm_set_level_ptr:
	stx lvlptrlo
	sty lvlptrhi
	rts
gm_set_room_ptr:
	stx roomptrlo
	sty roomptrhi
	rts
; ** SUBROUTINE: gm_set_tile_head
; ** SUBROUTINE: gm_set_pal_head
; ** SUBROUTINE: gm_set_ent_head
; args:
;     x - low byte
;     a - high byte
gm_set_tile_head:
	stx arrdheadlo
	sta arrdheadhi
	rts
gm_set_pal_head:
	stx palrdheadlo
	sta palrdheadhi
	rts
gm_set_ent_head:
	stx entrdheadlo
	sta entrdheadhi
	rts

; ** SUBROUTINE: gm_read_tile_na
; ** SUBROUTINE: gm_read_ent_na
; ** SUBROUTINE: gm_read_tile
; ** SUBROUTINE: gm_read_ent
; desc: Reads a byte from the tile or entity streams. The _na versions don't
; advance the pointer.
; returns: a - the byte of data read in
; clobbers: x
gm_read_tile_na:
	ldx #0
	lda (arrdheadlo,x)
	rts

gm_read_ent_na:
	ldx #0
	lda (entrdheadlo,x)
	rts

gm_read_pal_na:
	ldx #0
	lda (palrdheadlo,x)
	rts

gm_read_tile:
	ldx #0
	lda (arrdheadlo,x)
gm_adv_tile:
	inc arrdheadlo
	bne :+
	inc arrdheadhi
:	rts

gm_read_ent:
	ldx #0
	lda (entrdheadlo,x)
gm_adv_ent:
	inc entrdheadlo
	bne :+
	inc entrdheadhi
:	rts

gm_read_pal:
	ldx #0
	lda (palrdheadlo,x)
	inc palrdheadlo
	bne :+
	inc palrdheadhi
:	rts


; ** SUBROUTINE: gm_fetch_room
; args: y - offset into lvl array
; clobbers: a, x, y
; desc: loads a room, initializes the tile and entity streams
gm_fetch_room:
	; load room pointer from lvl pointer
	lda (lvlptrlo),y
	tax
	iny
	lda (lvlptrlo),y
	tay
	jsr gm_set_room_ptr
	ldy #3

gm_fetch_room_loop:
	lda (roomptrlo),y
	sta leveldatas1-3,y
	iny
	cpy #14
	bne gm_fetch_room_loop
	
	; load tile pointer from room pointer, Y=10
	lda (roomptrlo),y
	tax
	iny
	lda (roomptrlo),y
	iny
	jsr gm_set_tile_head

	; load palette pointer from room pointer
	lda (roomptrlo),y
	tax
	iny
	lda (roomptrlo),y
	iny
	jsr gm_set_pal_head

	; load entity pointer from room pointer
	lda (roomptrlo),y
	tax
	iny
	lda (roomptrlo),y
	iny
	jsr gm_set_ent_head
	rts

; ** SUBROUTINE: gm_set_level_1
gm_set_level_1:
	ldx #0
	; fallthru

; ** SUBROUTINE: gm_set_level
; args: X - level number
; assumes: vblank is off and you're loading a new level
gm_set_level:
	lda level_table, x
	inx
	ldy level_table, x
	tax
	jsr gm_set_level_ptr
	
	ldy #0
	lda (lvlptrlo), y
	jsr mmc1_selcharbank    ; select the character tile bank specified in the level
	
	; fallthru

; ** SUBROUTINE: gm_set_room
; args: Y - room number
; assumes: you're loading a new level
gm_set_room:
	iny
	iny
	jsr gm_fetch_room
	rts

; ** SUBROUTINE: gm_draw_2xsprite
; arguments: x - offset into zero page with sprite structure
;            a - x position, y - y position
; structure:  [shared attributes] [left sprite] [right sprite]
gm_draw_2xsprite:
	sta x_crd_temp
	sty y_crd_temp
	lda $00,x       ; get shared attributes into a
	inx
	ldy $00,x       ; get left sprite
	inx
	stx temp7
	jsr oam_putsprite
	ldx temp7
	ldy $00,x       ; get right sprite
	lda x_crd_temp  ; add 8 to x_crd_temp
	clc
	adc #8
	sta x_crd_temp
	dex
	dex
	lda $00,x       ; get shared attributes again
	jsr oam_putsprite
	rts

.include "entities.asm"

; ** SUBROUTINE: gm_draw_entities
; desc: Draws visible entities to the screen.
gm_draw_entities:
	ldx #0
gm_draw_ents_loop:
	lda sprspace+sp_kind, x
	beq :+             ; this is an empty entity slot. waste no time
	stx temp1
	jsr gm_draw_ent_call
	ldx temp1
:	inx
	cpx #sp_max
	bne gm_draw_ents_loop
	rts

deathtable1: .byte $FC, $FD, $00, $03, $04, $03, $00, $FD
deathtable2: .byte $00, $FD, $FC, $FD, $00, $03, $04, $03

gm_dead_sub1:
	lda deathtimer
	tay
	lda temp1
	beq :++
:	clc
	adc temp1
	dey
	bne :-
	sta temp1
:	rts
gm_dead_sub2:
	lda deathtimer
	tay
	beq :++
	lda temp2
:	clc
	adc temp2
	dey
	bne :-
	sta temp2
:	rts

; ** SUBROUTINE: gm_draw_dead
gm_draw_dead:
	lda #pl_dead
	bit playerctrl
	bne :+
	rts
:	ldy #0
gm_draw_dead_loop:
	lda deathtable1, y ; the X coordinate offset
	sta temp1
	lda deathtable2, y ; the Y coordinate offset
	sta temp2
	
	sty temp3
	jsr gm_dead_sub1
	jsr gm_dead_sub2
	ldy temp3
	
	lda player_x
	clc
	adc #4
	clc
	adc temp1
	sta x_crd_temp
	
	lda player_y
	clc
	adc #4
	clc
	adc temp2
	sta y_crd_temp
	
	; hackhack
	lda player_y
	cmp #$C0
	bcc :+
	cpy #4
	bcc :+
	jmp gm_draw_dead_done
	
:	lda plh_attrs
	sty temp3

	ldy deathtimer
	cpy #8
	bcc :+
	ldy #$72
	bne :++
:	ldy #$70
:	jsr oam_putsprite
	ldy temp3
	
	iny
	cpy #8
	bne gm_draw_dead_loop
	
	; increment death timer
gm_draw_dead_done:
	ldx deathtimer
	inx
	cpx #16
	beq gm_respawn
	stx deathtimer
	rts

gm_respawn:
	lda #pl_dead
	eor playerctrl
	sta playerctrl
	
	lda #0
	sta player_y
	
	rts

; ** SUBROUTINE: gm_draw_player
gm_draw_player:
	lda #pl_dead
	bit playerctrl       ; don't draw player if dead
	beq :+
	rts
:	lda #pl_left
	bit playerctrl
	bne gm_facingleft
	lda #0
	ldx plr_spr_l
	ldy plr_spr_r
	sta temp1
	stx temp2
	sty temp3
	lda plh_attrs
	ldx plh_spr_l
	ldy plh_spr_r
	sta temp4
	stx temp5
	sty temp6
	jmp gm_donecomputing
gm_facingleft:
	lda #obj_fliphz
	ldx plr_spr_r
	ldy plr_spr_l
	sta temp1
	stx temp2
	sty temp3
	ora plh_attrs
	ldx plh_spr_r
	ldy plh_spr_l
	sta temp4
	stx temp5
	sty temp6
gm_donecomputing:
	ldx #temp1           ; draw player
	lda player_x
	ldy player_y
	jsr gm_draw_2xsprite
	ldx #temp4           ; draw hair
	clc
	lda player_y
	adc spryoff
	tay
	lda #pl_left
	bit playerctrl
	bne gm_sprxoffleft
	clc
	lda player_x
	adc sprxoff
	jmp gm_sprxoffdone
gm_sprxoffleft:
	sec
	lda player_x
	sbc sprxoff
gm_sprxoffdone:
	jsr gm_draw_2xsprite
	rts

gm_idletbl:
	.byte plr_idle1_l, plr_idle1_r
	.byte plr_idle2_l, plr_idle2_r
gm_walktbl:
	.byte plr_walk1_l, plr_walk1_r
	.byte plr_walk2_l, plr_walk2_r
	.byte plr_walk3_l, plr_walk3_r
	.byte plr_walk4_l, plr_walk4_r
gm_pushtbl:
	.byte plr_push2_l, plr_push2_r
	.byte plr_push1_l, plr_push1_r
gm_climtbl:
	.byte plr_clim1_l, plr_clim1_r
	.byte plr_clim2_l, plr_clim2_r

gm_anim_table:
	; format: player L, player R, hair L, hair R, hair X off, hair Y off, flags, unused.
	.byte <gm_idletbl, >gm_idletbl, plr_hasta_l, plr_hasta_r, $00, $00, af_2frame, $00  ; IDLE
	.byte <gm_walktbl, >gm_walktbl, plr_hamvr_l, plr_hamvr_r, $00, $00, af_4frame|af_wlkspd|af_oddryth, $00  ; WALK
	.byte plr_jump_l,  plr_jump_r,  plr_hamvu_l, plr_hamvu_r, $00, $00, af_none,   $00  ; JUMP
	.byte plr_fall_l,  plr_fall_r,  plr_hamvd_l, plr_hamvd_r, $00, $00, af_none,   $00  ; FALL
	.byte <gm_pushtbl, >gm_pushtbl, plr_hasta_l, plr_hasta_r, $01, $00, af_2frame|af_oddryth, $00  ; PUSH
	.byte <gm_climtbl, >gm_climtbl, plr_hasta_l, plr_hasta_r, $01, $00, af_2frame, $00  ; CLIMB
	.byte plr_dash_l,  plr_dash_r,  plr_hadsh_l, plr_hadsh_r, $00, $00, af_none,   $00  ; DASH
	.byte plr_flip_l,  plr_flip_r,  plr_haflp_l, plr_haflp_r, $00, $00, af_none,   $00  ; FLIP
	.byte plr_clim1_l, plr_clim1_r, plr_hasta_l, plr_hasta_r, $01, $00, af_none,   $00  ; CLIMB IDLE

gm_anim_advwalkL:
	sec
	lda animtimersb
	sbc temp1
	sta animtimersb
	lda animtimer
	sbc temp2
	sta animtimer
	jmp gm_timeradvanced
gm_anim_advwalk:
	; advance the animation timer by the walk speed divided by 8
	lda player_vs_x
	sta temp1
	lda player_vl_x
	sta temp2
	clc
	ldy #3
gm_advwalkloop:
	lda temp2
	ror
	sta temp2
	lda temp1
	ror
	sta temp1
	dey
	bne gm_advwalkloop
	lda #pl_left         ; shift loop done, check which direction we should advance
	bit playerctrl
	bne gm_anim_advwalkL
	clc
	lda animtimersb
	adc temp1
	sta animtimersb
	lda animtimer
	adc temp2
	sta animtimer
	jmp gm_timeradvanced

; ** SUBROUTINE: gm_anim_mode
; desc:      Sets the current animation mode.  Resets the animation timer if necessary.
; arguments: A - new animation mode
gm_anim_mode:
	cmp animmode         ; check if the animation mode is the same
	beq gm_sameanim
	sta animmode         ; animation is different
	lda #0               ; clear animation timer
	sta animtimer
	sta animtimersb
	lda animmode         ; load animation data
	asl
	asl
	asl                  ; 8 bytes per animation state
	tax                  ; use as index into table
	lda gm_anim_table, x ; load animation frame pointer or left/right sprite
	inx
	sta anfrptrlo
	lda gm_anim_table, x
	inx
	sta anfrptrhi
	lda gm_anim_table, x
	inx
	sta plh_spr_l
	lda gm_anim_table, x
	inx
	sta plh_spr_r
	lda gm_anim_table, x
	inx
	sta sprxoff
	lda gm_anim_table, x
	inx
	sta spryoff
	sta spryoffbase
	lda gm_anim_table, x
	inx
	sta animflags
	;                      8th byte unused
	jmp gm_donetimer
gm_sameanim:
	lda #af_wlkspd
	bit animflags
	bne gm_anim_advwalk
	clc
	lda #animspd
	adc animtimersb
	sta animtimersb
	lda #0
	adc animtimer
	sta animtimer
gm_timeradvanced:
	ldx #$FF
	lda #af_2frame       ; load the 2 frame limit into X if needed
	bit animflags
	beq gm_timerNOT2f
	ldx #1
gm_timerNOT2f:
	lda #af_4frame       ; load the 4 frame limit into X if needed
	bit animflags
	beq gm_timerNOT4f
	ldx #3
gm_timerNOT4f:
	lda #af_noloop
	bit animflags
	beq gm_timernomax
	cpx animtimer        ; af_noloop set, so need to cap
	bcs gm_donetimer     ; X >= animtimer, so it's fine
	stx animtimer
	jmp gm_donetimer
gm_timernomax:
	txa                  ; af_noloop not set, so this is a loop
	and animtimer
	sta animtimer
gm_donetimer:
	lda #(af_2frame|af_4frame)
	bit animflags
	beq gm_regularload
	lda animtimer
	asl
	tay
	iny
	lda (anfrptrlo),y
	tax
	dey
	lda (anfrptrlo),y
	jmp gm_loaded
gm_regularload:
	lda anfrptrlo
	ldx anfrptrhi
gm_loaded:
	sta plr_spr_l
	stx plr_spr_r
	lda #af_oddryth
	bit animflags
	beq gm_nooddrhythm
	clc
	lda animtimer
	and #1
	adc spryoffbase
	sta spryoff
gm_nooddrhythm:
	rts

; ** SUBROUTINE: gm_anim_player
; desc: Updates the sprite numbers for the player character and their hair.
; note: gm_anim_player starts a little below.
gm_anim_player:
	lda #0
	sta spryoff
	ldx dashcount
	inx
	stx plh_attrs    ; set the palette to the dash count + 1
	lda dashtime
	cmp #0
	bne gm_dashing
	lda #pl_pushing
	bit playerctrl
	bne gm_pushing
	lda player_vl_y
	bmi gm_jumping   ; if it's <0, then jumping
	lda #pl_ground
	bit playerctrl
	beq gm_falling   ; if pl_ground set, then moving only in X direction
	lda player_vl_x  ; check if both components of the velocity are zero
	bne gm_anim_notidle
	lda player_vs_x
	beq gm_idle
gm_anim_notidle:
	lda #pl_left     ; check if facing left
	bit playerctrl
	beq gm_anim_right
	lda player_vl_x  ; load the player's velocity but flip its sign
	eor #$FF
	clc
	adc #1
	bmi gm_flip      ; if A <= 0, then flipping
	beq gm_flip
	jmp gm_right
gm_anim_right:
	lda player_vl_x
	bmi gm_flip      ; if A < 0, then flipping
	jmp gm_right     ; if A >= 0, then running. vl_x==vs_x==0 case is already handled.
gm_idle:
	lda #am_idle
	jmp gm_anim_mode
gm_flip:
	lda #am_flip
	jmp gm_anim_mode
gm_dashing:
	lda #am_dash
	jmp gm_anim_mode
gm_right:
	lda #am_walk
	jmp gm_anim_mode
gm_jumping:
	lda #am_jump
	jmp gm_anim_mode
gm_falling:
	lda #am_fall
	jmp gm_anim_mode
gm_pushing:
	lda #pl_ground
	bit playerctrl
	beq gm_sliding
	lda #am_push
	jmp gm_anim_mode
gm_sliding:
	lda #am_climbidl
	jmp gm_anim_mode
	
; ** SUBROUTINE: gm_getdownforce
; desc:    Gets the downward force in the A register depending on their state.
gm_getdownforce:
	lda player_vl_y
	bpl gm_defaultgrav
	lda #pl_dashed
	bit playerctrl
	bne gm_dashgrav     ; if dashed before touching the ground, return the strong gravity
	lda #cont_a
	bit p1_cont
	bne gm_defaultgrav  ; if A isn't held, then use a stronger gravity force
gm_stronggrav:
	lda #gravitynoA
	rts
gm_dashgrav:
	lda #$FF
	rts
gm_defaultgrav:
	lda #gravity
	rts
	
; ** SUBROUTINE: gm_gravity
; desc:    If player is not grounded, applies a constant downward force.
gm_gravity:
	lda #pl_ground
	bit playerctrl
	beq gm_apply_gravity
	rts
gm_apply_gravity:
	jsr gm_getdownforce
	clc
	adc player_vs_y
	sta player_vs_y
	lda #0
	adc player_vl_y
	sta player_vl_y
	lda #pl_pushing
	bit playerctrl
	beq gm_gravityreturn
	lda player_vl_y
	bmi gm_gravityreturn
	bne gm_gravityslide   ; player_vl_x > 0
	lda player_vs_y
	cmp #maxslidespd
	bcc gm_gravityreturn  ; player_vl_x == 0, player_vs_x < maxslidespd
gm_gravityslide:
	lda #maxslidespd
	sta player_vs_y
	lda #0
	sta player_vl_y
gm_gravityreturn:
	rts

; ** SUBROUTINE: gm_dragshift
; desc:    Shifts the 16-bit number at (temp2, temp1) by 1.
gm_dragshift:
	clc
	lda temp2
	ror
	sta temp2
	lda temp1
	ror
	sta temp1
	rts
	
; ** SUBROUTINE: gm_drag
; desc:    Apply a constant dragging force that makes the X velocity tend to zero.
gm_drag:
	lda dashtime
	bne gm_drag4      ; while dashing, ensure drag doesn't take hold
	lda #%00000011    ; check if any direction on the D-pad is held
	bit p1_cont       ; don't apply drag while holding buttons (the
	bne gm_drag4      ; button routines pull the player towards maxwalk)
	lda player_vl_x
	bne gm_drag5
	lda player_vs_x
	beq gm_drag4      ; if both vl_x nor vs_x are zero, then return
gm_drag5:
	lda player_vl_x   ; perform one shift to the right, this divides by 2
	clc
	ror
	sta temp2
	lda player_vs_x
	ror
	sta temp1
	jsr gm_dragshift  ; perform another shift to the right
	lda #%00100000
	bit temp2         ; check if the high bit of the result is 1
	beq gm_drag2
	lda temp2
	ora #%11000000    ; extend the sign
	sta temp2
gm_drag2:
	ldx temp2
	bne gm_drag3
	ldx temp1         ; make sure the diff in question is not zero
	bne gm_drag3      ; this can't happen with a negative velocity vector
	inx               ; because it is not null. but it can happen with a
	stx temp1         ; positive velocity vector less than $00.$04
gm_drag3:
	sec
	lda player_vs_x
	sbc temp1
	sta player_vs_x
	lda player_vl_x
	sbc temp2
	sta player_vl_x
gm_drag4:
	rts

gm_appmaxwalkL:
	; this label was reached because the velocity is < -maxwalk.
	; if we are on the ground, we need to approach maxwalk.
	lda #pl_ground
	bit playerctrl
	beq gm_appmaxwalkrtsL
	lda player_vl_x
	bpl gm_appmaxwalkrtsL  ; If the player's velocity is >= 0, don't perform any adjustments
	clc
	lda player_vs_x
	adc #maxwalkad
	sta player_vs_x
	lda player_vl_x
	adc #0
	sta player_vl_x
	cmp #(maxwalk^$FF+1)
	bcc gm_appmaxwalkrtsL  ; A < -maxwalk, so there's still some approaching to be done
	beq gm_appmaxwalkrtsL  ; A == -maxwalk
gm_setmaxwalkL:            ; <--- referenced by gm_walljump
	lda #(maxwalk^$FF+1)
	sta player_vl_x
	lda #0
	sta player_vs_x
gm_appmaxwalkrtsL:
	rts

gm_appmaxwalkR:
	; this label was reached because the velocity is > maxwalk.
	; if we are on the ground, we need to approach maxwalk.
	lda #pl_ground
	bit playerctrl
	beq gm_appmaxwalkrtsR
	lda player_vl_x
	bmi gm_appmaxwalkrtsR  ; If the player's velocity is negative, don't perform any adjustments
	beq gm_appmaxwalkrtsR  ; Ditto with zero
	sec
	lda player_vs_x
	sbc #maxwalkad
	sta player_vs_x
	lda player_vl_x
	sbc #0
	sta player_vl_x
	cmp #maxwalk
	bcs gm_appmaxwalkrtsR  ; A >= maxwalk, so there's still some approaching to be done
gm_setmaxwalkR:            ; <--- referenced by gm_walljump
	lda #maxwalk
	sta player_vl_x
	lda #0
	sta player_vs_x
gm_appmaxwalkrtsR:
	rts

gm_add3xL:
	beq gm_dontadd3xL
	sec
	lda player_vs_x
	sbc #(accel*3)
	jmp gm_added3xL

gm_add3xR:
	cmp #$FF
	beq gm_dontadd3xR
	clc
	lda player_vs_x
	adc #(accel*3)
	jmp gm_added3xR

gm_appmaxwalkR_BEQ:
	beq gm_appmaxwalkR

; ** SUBROUTINE: gm_pressedleft
gm_pressedleft:
	ldx #0
	lda player_vl_x
	bpl gm_lnomwc
	cmp #(maxwalk^$FF+1) ; compare it to the max walking speed
	bcc gm_lnomwc    ; carry clear if A < -maxwalk.
	ldx #1           ; if it was bigger than the walking speed already,
gm_lnomwc:           ; then we don't need to check the cap
	lda player_vl_x
	bpl gm_add3xL
gm_dontadd3xL:
	sec
	lda player_vs_x
	sbc #accel
gm_added3xL:
	sta player_vs_x
	lda player_vl_x
	sbc #accelhi
	sta player_vl_x
	lda #pl_left
	ora playerctrl
	sta playerctrl
	cpx #0           ; check if we need to cap it to -maxwalk
	beq gm_lnomwc2   ; no, instead, approach -maxwalk
gm_capmaxwalkL:      ; <-- referenced by gm_jump
	lda player_vl_x  ; load the player's position
	cmp #(maxwalk^$FF+1)
	bcs gm_lnomwc2   ; carry set if A >= -maxwalk meaning we don't need to
	lda #(maxwalk^$FF+1)
	sta player_vl_x
	lda #0
	sta player_vs_x
gm_lnomwc2:
	rts

; ** SUBROUTINE: gm_pressedright
gm_pressedright:
	ldx #0
	lda player_vl_x
	bmi gm_rnomwc    ; if the player was moving left a comparison would lead to an overcorrectiom
	cmp #(maxwalk+1) ; compare it to the max walking speed
	bcs gm_rnomwc    ; if it was bigger than the walking speed already,
	ldx #1           ; then we don't need to check the cap
gm_rnomwc:
	lda player_vl_x
	bmi gm_add3xR    ; A < 0, then add stronger accel
gm_dontadd3xR:
	clc
	lda player_vs_x
	adc #accel
gm_added3xR:
	sta player_vs_x
	lda player_vl_x
	adc #accelhi
	sta player_vl_x
	lda #(pl_left ^ $FF)
	and playerctrl
	sta playerctrl
	cpx #0           ; check if we need to cap it to maxwalk
	beq gm_appmaxwalkR_BEQ ; no, instead, approach maxwalk
gm_capmaxwalkR:      ; <-- referenced by gm_jump
	lda player_vl_x  ; load the player's position
	cmp #maxwalk
	bcc gm_rnomwc2   ; carry set if A >= maxwalk meaning we don't need to
	lda #maxwalk     ; cap it at maxwalk
	sta player_vl_x
	lda #0
	sta player_vs_x
gm_rnomwc2:
	rts

; ** SUBROUTINE: gm_controls
; desc:    Check controller input and apply forces based on it.
gm_dontdash:
	lda #cont_right
	bit p1_cont
	bne gm_pressedright
	lda #cont_left
	bit p1_cont
	bne gm_pressedleft
	rts
gm_controls:
	lda jumpbuff
	bne gm_jump       ; If player buffered a jump, then try to perform it.
gm_dontjump:
	lda #cont_b
	bit p1_cont
	beq gm_dontdash   ; if the player pressed B
	bit p1_conto
	bne gm_dontdash   ; if the player wasn't pressing B last frame
	lda dashcount
	cmp #maxdashes
	bcs gm_dontdash   ; and if the dashcount is < maxdashes
	inc dashcount
	ldx #defdashtime
	stx dashtime
	lda #pl_dashed
	ora playerctrl
	sta playerctrl
	jmp gm_dontdash

gm_jump:
	lda wjumpcoyote
	bne gm_walljump
gm_normaljump:
	lda jumpcoyote
	beq gm_dontjump   ; if no coyote time, then can't jump
gm_actuallyjump:
	lda #(jumpvel ^ $FF + 1)
	sta player_vl_y
	lda #(jumpvello ^ $FF + 1)
	sta player_vs_y
	lda #0
	sta jumpbuff      ; consume the buffered jump input
	sta jumpcoyote    ; consume the existing coyote time
	sta wjumpcoyote   ; or the wall coyote time
	lda #%00000011
	bit p1_cont
	beq gm_dontjump   ; don't give a boost if we aren't moving
	lda player_vl_x
	bmi gm_jumpboostneg; if velocity < 0 pixels, then apply the leftward jump boost
	bne gm_applyjumpboost ; if velocity >= 1 pixel, then apply the jump boost
	jmp gm_dontjump   ; 0 < velocity < 1 so dont do a jump boost
gm_jumpboostneg:
	cmp #$FF
	beq gm_dontjump   ; if -1 <= velocity, then don't apply a jump boost
gm_applyjumpboost:
	lda #pl_left
	bit playerctrl
	beq gm_jumphboostR
	sec               ; apply the small jump boost to the right
	lda #jmphboost
	sbc player_vs_x
	sta player_vs_x
	lda #0
	sbc player_vl_x
	sta player_vl_x
	jsr gm_capmaxwalkL; ensure that it doesn't go over maxwalk
	jmp gm_dontjump   ; that would be pretty stupid as it would
gm_jumphboostR:       ; allow speed buildup up to the physical limit
	clc
	lda #jmphboost
	adc player_vs_x
	sta player_vs_x
	lda #0
	adc player_vl_x
	sta player_vl_x
	jsr gm_capmaxwalkR
	jmp gm_dontjump
	
gm_walljump:
	lda #pl_ground
	bit playerctrl
	bne gm_normaljump ; if player is grounded, ALWAYS perform a standard jump
	; the facing direction IS the one the player is currently pushing against.
	; that means that the opposite direction is the one they should be flinged against
	lda playerctrl
	and #pl_wallleft
	eor #pl_wallleft
	lsr
	lsr
	lsr               ; move bit 3 (pl_wallleft) into bit 0 (pl_left)'s position
	sta temp1
	lda playerctrl
	and #((pl_left|pl_dashed)^$FF) ; also clear the pl_dashed flag to allow the wall jump at full force
	ora temp1
	sta playerctrl
	
	lda #pl_left
	bit playerctrl
	bne gm_walljumpboostL
	jsr gm_setmaxwalkR; going right, so set vel to +maxwalk
	jmp gm_actuallyjump
gm_walljumpboostL:
	jsr gm_setmaxwalkL; going left, so set vel to -maxwalk
	jmp gm_actuallyjump

; ** SUBROUTINE: gm_jumpgrace
; desc:    Update the jump grace state.  If the A button is held, start buffering a jump.
;          If necessary, decrement the coyote timer.
gm_jumpgrace:
	lda #cont_a
	bit p1_conto
	bne gm_nosetbuff  ; (p1_conto & #cont_a) = 0
	bit p1_cont
	beq gm_nosetbuff  ; if A was just pressed, then assign the default buff time
	lda #defjmpbuff
	sta jumpbuff
gm_nosetbuff:
	ldx jumpbuff
	beq gm_nodecbuff  ; if there is buff time to deduct, deduct 1 point this frame
	dex
	stx jumpbuff
gm_nodecbuff:
	ldx jumpcoyote
	beq gm_nodeccoyote
	dex
	stx jumpcoyote
gm_nodeccoyote:
	ldx wjumpcoyote
	beq gm_nodecwcoyote
	dex
	stx wjumpcoyote
gm_nodecwcoyote:
	rts

; ** SUBROUTINE: gm_sanevels
; desc:    Uphold velocity limits.  This is especially of importance for the X component.
;          Due to the limited bandwidth of the PPU (we can't effectively copy more than
;          1 column of tiles or so to PPU VRAM), we're forced to uphold this limit.
;          Technically we could do up to 8, but only if we disable the palette feature.
gm_sanevels:
	ldy #0
	jsr gm_sanevelx
	jmp gm_sanevely
	
gm_sanevelx:
	lda player_vl_x
	bmi gm_negvelx
	; positive x velocity
	cmp #maxvelxhi
	bcc gm_nocorvelx
	lda #maxvelxhi
	sta player_vl_x
	sty player_vs_x
gm_nocorvelx:
	rts
gm_negvelx:
	cmp #(maxvelxhi^$FF + 1)
	bcs gm_nocorvelx
	lda #(maxvelxhi^$FF + 1)
	sta player_vl_x
	sty player_vs_x
	rts
gm_sanevely:
	lda player_vl_y
	bmi gm_negvely
	; positive y velocity
	cmp #maxvelyhi
	bcc gm_nocorvely
	lda #maxvelyhi
	sta player_vl_y
	sty player_vs_y
gm_nocorvely:
	rts
gm_negvely:
	cmp #(maxvelyhi^$FF + 1)
	bcs gm_nocorvely
	lda #(maxvelyhi^$FF + 1)
	sta player_vl_y
	sty player_vs_y
	rts

; ** SUBROUTINE: gm_getleftx
; desc: Gets the tile X position where the left edge of the player's hitbox resides
; returns: A - the X coordinate
gm_getleftx:
	clc
	lda player_x
	adc #(8-plrwidth/2); determine leftmost hitbox position
	clc
	adc camera_x
	sta x_crd_temp    ; x_crd_temp = low bit of check position
	lda player_x_hi
	adc camera_x_hi
	ror               ; rotate it into carry
	lda x_crd_temp
	ror               ; rotate it into the low position
	lsr
	lsr
	;lsr               ; finish dividing by the tile size
	rts

; ** SUBROUTINE: gm_getrightx
; desc:     Gets the tile X position where the right edge of the player's hitbox resides
; returns:  A - the X coordinate
; note:     this is NOT ALWAYS the same as the result of gm_getleftx!! though perhaps
;           some optimizations are possible..
gm_getrightx:
	clc
	lda player_x
	adc #(15-plrwidth/2); determine right hitbox position
	clc
	adc camera_x
	sta x_crd_temp    ; x_crd_temp = low bit of check position
	lda player_x_hi
	adc camera_x_hi
	ror               ; rotate it into carry
	lda x_crd_temp
	ror               ; rotate it into the low position
	lsr
	lsr
	;lsr               ; finish dividing by the tile size
	rts

; ** SUBROUTINE: gm_getleftwjx
; desc: Gets the tile X position where the left of the wall jump check hitbox resides.
; returns: A - the X coordinate.
gm_getleftwjx:
	clc
	lda player_x
	adc #(8-plrwidth/2-wjgrace); determine leftmost hitbox position
	clc
	adc camera_x
	sta x_crd_temp    ; x_crd_temp = low bit of check position
	lda player_x_hi
	adc camera_x_hi
	ror               ; rotate it into carry
	lda x_crd_temp
	ror               ; rotate it into the low position
	lsr
	lsr
	;lsr               ; finish dividing by the tile size
	rts

; ** SUBROUTINE: gm_getrightwjx
; desc: Gets the tile X position where the right of the wall jump check hitbox resides.
; returns: A - the X coordinate.
gm_getrightwjx:
	clc
	lda player_x
	adc #(15+wjgrace-plrwidth/2); determine right hitbox position
	clc
	adc camera_x
	sta x_crd_temp    ; x_crd_temp = low bit of check position
	lda player_x_hi
	adc camera_x_hi
	ror               ; rotate it into carry
	lda x_crd_temp
	ror               ; rotate it into the low position
	lsr
	lsr
	;lsr               ; finish dividing by the tile size
	rts

; ** SUBROUTINE: gm_gettopy
; desc:     Gets the tile Y position where the top edge of the player's hitbox resides
; returns:  A - the Y coordinate
gm_gettopy:
	clc
	lda player_y
	adc #(16-plrheight)
	lsr
	lsr
	lsr
	;lsr
	rts

; ** SUBROUTINE: gm_getbottomy_w
; desc:     Gets the tile Y position where the bottom edge of the player's hitbox resides,
;           when checking for collision with walls.
; returns:  A - the Y coordinate
; note:     this is NOT ALWAYS the same as the result of gm_gettopy!! though perhaps
;           some optimizations are possible..
; note:     to allow for a bit of leeway, I took off one pixel from the wall check.
gm_getbottomy_w:
	clc
	lda player_y
	adc #14
	lsr
	lsr
	lsr
	;lsr
	rts

; ** SUBROUTINE: gm_getbottomy_g
; desc:     Gets the tile Y position where the bottom edge of the player's hitbox resides,
;           when checking for collision with ground objects.
; returns:  A - the Y coordinate
gm_getbottomy_g:
	clc
	lda player_y
	adc #15
	lsr
	lsr
	lsr
	;lsr
	rts

; ** SUBROUTINE: gm_getmidy
; desc:     Gets the tile Y position at the middle of the player's hitbox, used for wall jump checking
; returns:  A - the Y coordinate
gm_getmidy:
	clc
	lda player_y
	adc #(14-plrheight/2)
	lsr
	lsr
	lsr
	;lsr
	rts

; ** SUBROUTINE: gm_getbottomy_f
; desc:     Gets the tile Y position where the bottom edge of the player's hitbox resides,
;           when checking for collision with floors.
; returns:  A - the Y coordinate
; clobbers: A
; note:     this is NOT ALWAYS the same as the result of gm_gettopy!! though perhaps
;           some optimizations are possible..
gm_getbottomy_f:
	clc
	lda player_y
	adc #$10
	lsr
	lsr
	lsr
	;lsr
	rts

; ** SUBROUTINE: gm_collide
; desc:      Checks for collision.
; arguments: X - tile's x position, Y - tile's y position, A - direction
; returns:   zero flag set - collided
; direction: 0 - floor, 1 - ceiling, 2 - left, 3 - right
; note:      temp1, temp2 & temp7 are used by caller
; note:      collision functions rely on the Y register staying as the Y position of the tile!
; reserves:  temp3, temp4, temp5, temp6
; clobbers:  A, X
gc_floor = $00
gc_ceil  = $01
gc_left  = $02
gc_right = $03
gm_collide:
	pha                 ; store the collision direction
	jsr h_get_tile      ; get the tile
	tax
	lda metatile_info,x ; get collision information
	asl
	tax
	lda gm_colljumptable,x
	sta temp3
	inx
	lda gm_colljumptable,x
	sta temp4
	pla
	jmp (temp3)         ; use temp3 as an indirect jump pointer

; Arguments for these jump table subroutines:
; * A - The direction of collision
gm_colljumptable:
	.word gm_collidenone
	.word gm_collidefull
	.word gm_collidespikes
	.word gm_collidejthru

gm_collidefull:
	lda #1
	rts
gm_collidejthru:
	tax
	lda player_vl_y
	bmi gm_collidenone; if player is moving UP, don't do collision checks at all
	cpx #gc_floor
	bne gm_collidenone; no collision for anything but the floor
	tya               ; the tile's Y position now in A
	asl
	asl
	asl               ; it's a pixel position now
	sec
	sbc #(16-3)
	sta temp3
	ldx player_yo
	cpx player_y
	beq gm_colljtnochg
gm_colljtloop:
	cpx temp3
	bcc gm_collidefull; if player failed to fall below tileX - 16 + 3
	inx
	cpx player_y
	bne gm_colljtloop
gm_collidenone:
	lda #0
	rts
gm_colljtnochg:
	; no change in Y
	lda temp3
	sec
	sbc #3            ; take off the rest
	sta temp3
	lda player_y
	cmp temp3
	beq gm_collidefull; might be above or below, we only return collision if we're exactly
	lda #0            ; on the platform's level.
	rts

gm_collidespikes:
	tax
	lda player_vl_y
	bmi gm_collidenone; if player is going UP, then don't do collision checks at all.
	cpx #gc_ceil      ; if NOT moving up, then kill the player and return
	beq gm_colliderts
	cpx #gc_floor
	bne gm_collidespkw
	clc
	lda player_yo     ; get the player old Y position, MOD 8. the bottom pixel's
	and #$7           ; position is exactly the same as the player old Y position mod 8
	adc player_vl_y   ; add the Y velocity that was added to get to player_y.
	cmp #$6           ; a spike's hit box is like 2 px tall
	bcs gm_killplayer
gm_collideno:
	lda #0            ; clear the zero flag
gm_colliderts:
	rts
gm_collidespkw:
	lda #pl_ground
	bit playerctrl
	beq gm_collideno  ; if wasn't grounded, then it's fine
	;jmp gm_killplayer
	; fall through to killplayer

; ** SUBROUTINE: gm_killplayer
; desc:     Initiates the player death sequence.
gm_killplayer:
	lda #pl_dead
	ora playerctrl
	sta playerctrl
	lda #0
	sta deathtimer
	rts

; ** SUBROUTINE: gm_applyy
; desc:     Apply the velocity in the Y direction.
gm_velminus:
	adc player_y      ; Velocity is minus. X contains whether the old position was >= $F0
	sta player_y
	cmp #$F0
	bcs gm_velapplied ; if the position is now more than #$F1, then we don't need to do anything
	cpx #0            ; if X is 0, then the old position was < $F1, therefore we're done
	beq gm_velapplied
	lda #$F0
	sta player_y      ; otherwise, cap our position up to $F1
	jmp gm_velapplied
	
gm_applyy:
	jsr gm_getleftx
	sta temp1
	jsr gm_getrightx
	sta temp2
	lda player_y
	sta player_yo     ; backup the old Y position. Used for spike collision
	cmp #$F0
	rol               ; A = (A << 1) | carry [set if A >= $F0]
	and #1            ; A = A & 1
	tax               ; X = (player_y >= $F0)
	lda playerctrl
	and #(pl_ground ^ $FF)
	sta playerctrl    ; remove the grounded flag - it'll be added back if we are on the ground
	clc
	lda player_vs_y
	adc player_sp_y
	sta player_sp_y
	lda player_vl_y
	bmi gm_velminus   ; if player_vl_y < 0, then handle the minus case separately
	adc player_y      ; player_vl_y >= 0
	sta player_y
	cmp #$F0          ; if A >= $F0 && X, then die
	bcc gm_velapplied
	cpx #1
	bne gm_killplayer
gm_velapplied:        ; this is the return label from gm_velminus
	lda player_vl_y
	bmi gm_checkceil
	jmp gm_checkfloor
gm_fellout:           ; if the player fell out of the world
	sta player_y
	lda player_vl_y
	bpl gm_killplayer
	rts
gm_checkceil:
	jsr gm_gettopy
	tay
	sty y_crd_temp
	ldx temp1         ; check block 1
	lda #gc_ceil
	jsr gm_collide
	bne gm_snaptoceil
	ldy y_crd_temp    ; check block 2
	ldx temp2
	lda #gc_ceil
	jsr gm_collide
	bne gm_snaptoceil
	rts
gm_snaptoceil:
	clc
	lda y_crd_temp    ; load the y position of the tile that was collided with
	asl
	asl
	asl               ; turn it into a screen coordinate
	adc #(8-(16-plrheight)) ; add the height of the tile, minus the top Y offset of the player hitbox
	sta player_y
	lda #0            ; set the subpixel to zero
	sta player_sp_y
	sta player_vl_y   ; also clear the velocity
	sta player_vs_y   ; since we ended up here it's clear that velocity was negative.
	rts
gm_checkfloor:
	jsr gm_getbottomy_f
	tay               ; keep the Y position into the Y register
	sty y_crd_temp
gm_checkgdfloor:
	ldx temp1         ; check block 1
	lda #gc_floor
	jsr gm_collide
	bne gm_snaptofloor
	ldy y_crd_temp    ; check block 2
	ldx temp2
	lda #gc_floor
	jsr gm_collide
	bne gm_snaptofloor
	rts
gm_snaptofloor:
	lda #%11111000    ; round player's position to lower multiple of 8
	and player_y
	sta player_y
	lda #0            ; set the subpixel to zero
	sta player_sp_y
	lda dashtime
	cmp #(defdashtime-dashchrgtm-2)
	bcs gm_sfloordone ; until the player has started their dash, exempt from ground check
	lda #pl_ground    ; set the grounded bit, only thing that can remove it is jumping
	ora playerctrl
	and #(pl_dashed^$FF) ; clear the dashed flag
	sta playerctrl
	lda #defjmpcoyot
	sta jumpcoyote    ; assign coyote time because we're on the ground
	lda #0
	sta wjumpcoyote   ; can't perform a wall jump while on the ground
	sta player_vl_y
	sta player_vs_y
	sta dashcount
gm_sfloordone:
	rts

gm_leave_doframe:
	jsr gm_draw_player
	jsr gm_unload_os_ents
	jsr gm_draw_entities
	
	lda #1
	sta debug           ; end frame
	
	jsr ppu_nmi_on
	jsr nmi_wait
	jsr ppu_nmi_off	
	
	lda #0
	sta debug           ; start frame
	
	jmp com_clear_oam

cspeed = 8

gm_leaveroomR:
	lda #$F0
	sta player_x
	; now leave the room through the right side
	ldy warp_r_y
	sty transoff
	ldy warp_r
	cpy #$FF
	bne :+
	rts                      ; no warp was assigned there so return
:	jsr gm_set_room
	
	; load the room beginning pixel
	lda arwrhead             ; NOTE: assumes arwrhead in [0, 64)
	asl
	asl
	asl                      ; multiply by 8
	sta roombeglo
	rol
	and #1
	sta roombeghi
	
	clc
	lda transoff
	bmi gm_roomRtransneg
	lda lvlyoff              ; transoff is a positive value.
	adc transoff
	cmp #$1E
	bcc gm_roomRtransdone
	sbc #$1E                 ; carry set, means it's >= 28
	jmp gm_roomRtransdone
gm_roomRtransneg:
	lda lvlyoff              ; transoff is a negative value.
	adc transoff
	bcs gm_roomRtransdone
	adc #$1E                 ; carry clear, means it went into the negatives
	jmp gm_roomRtransdone
gm_roomRtransdone:
	sta lvlyoff
	lda gamectrl             ; clear the camera stop bits
	and #((gs_scrstopR|gs_scrstodR)^$FF)
	;ora #gs_deferpal
	sta gamectrl
	lda camera_x
	and #%11111100
	sta camera_x
	ldx trntwrhead
	inx
	stx arwrhead
	stx ntwrhead
	jsr h_gener_ents_r
	jsr h_gener_mts_r
	ldy #8
gm_roomRtranloopI:
	sty transtimer
	jsr h_gener_col_r
	jsr gm_leave_doframe
	ldy transtimer
	dey
	bne gm_roomRtranloopI
	ldy #32
gm_roomRtranloop:
	sty transtimer
	sec
	lda player_x
	sbc #cspeed
	bcs :+
	lda #0
:	sta player_x             ; move the player left by cspeed pixels per transition
	clc
	lda camera_x
	adc #cspeed              ; add cspeed to the camera X
	sta camera_x
	lda camera_x_hi
	adc #0
	and #1
	sta camera_x_hi
	
	lda transoff
	ror
	ror
	ror                      ; lvlyoff: 11000000
	and #%11000000
	sta trantmp1
	lda transoff
	lsr
	lsr                      ; lvlyoff: 00111111
	sta trantmp2
	lda #%11100000
	bit trantmp2
	beq :+
	ora trantmp2
	sta trantmp2
:	clc
	lda trantmp3
	adc trantmp1
	sta trantmp3
	lda camera_y
	adc trantmp2
	sta camera_y
	cmp #$F0
	bcc gm_roomRtrannocap
	lda trantmp2
	bpl gm_roomRtranpluscap
	lda camera_y
	sbc #$10
	sta camera_y
	jmp gm_roomRtrannocap
gm_roomRtranpluscap:
	lda camera_y
	clc
	adc #$10
	sta camera_y
gm_roomRtrannocap:
	sec
	lda player_sp_y
	sbc trantmp1
	sta player_sp_y
	lda player_y
	sbc trantmp2
	sta player_y
	
	lda #cspeed
	adc camera_rev
	sta camera_rev
	cmp #8
	bcs gm_roomRtrangen
gm_roomRtrangenbk:
	jsr gm_leave_doframe
	ldy transtimer
	dey
	bne gm_roomRtranloop
	lda #0
	sta dashcount            ; reset some things on room transition
	lda lvlyoff
	asl
	asl
	asl
	sta camera_y
	rts

gm_roomRtrangen:
	jsr h_gener_col_r
	lda camera_rev
	sec
	sbc #8
	sta camera_rev
	jmp gm_roomRtrangenbk

gm_leaveroomR_:
	jmp gm_leaveroomR

; ** SUBROUTINE: gm_applyx
; desc:    Apply the velocity in the X direction. 
gm_applyx:
	lda player_x
	sta player_xo
	clc
	lda player_vl_x
	rol                      ; store the upper bit in carry
	lda #$FF
	adc #0                   ; add the carry bit if needed
	eor #$FF                 ; flip it because we need the reverse
	tay                      ; This is the "screenfuls" part that we need to add to the player position
	lda playerctrl
	and #(pl_pushing^$FF)
	sta playerctrl           ; clear the pushing flag - it will be set on collision
	clc
	lda player_vs_x
	adc player_sp_x
	sta player_sp_x
	lda player_vl_x
	adc player_x
	bcs gm_nocheckoffs       ; If the addition didn't overflow, we need to detour.
	ldx player_vl_x          ; check if the velocity was positive
	bpl gm_nocheckoffs       ; yeah, of course it wouldn't overflow, it's positive!
	lda #0                   ; we have an underflow, means the player is trying to leave the screen
	ldy #0                   ; through the left side. we can't let that happen!
	clc                      ; zero out the player's new position
gm_nocheckoffs:
	sta player_x
	jsr gm_gettopy
	sta temp1                ; temp1 - top Y
	jsr gm_getbottomy_w
	sta temp2                ; temp2 - bottom Y
	lda player_vl_x
	bmi gm_checkleft
gm_checkright:
	lda player_x
	cmp #$F0
	bcs gm_leaveroomR_       ; try to leave the room
	jsr gm_getrightx
	tax
	stx y_crd_temp           ; note: x_crd_temp is clobbered by gm_collide!
	ldy temp1
	lda #gc_right
	jsr gm_collide
	bne gm_collright         ; if collided, move a pixel back and try again
	ldy temp2                ;  snapping to the nearest tile is a BIT more complicated so
	ldx y_crd_temp           ;  I will not bother
	lda #gc_right
	jsr gm_collide
	beq gm_checkdone
gm_collright:
	ldx #0                   ; set the velocity to a minuscule value to
	stx player_vl_x          ; ensure the player doesn't look idle
	inx
	stx player_vs_x
	lda playerctrl
	ora #pl_pushing
	and #(pl_wallleft^$FF)   ; the wall wasn't found on the left.
	sta playerctrl
	lda #defwjmpcoyo
	sta wjumpcoyote
	ldx player_x
	beq gm_checkdone         ; if the player X is zero... we're stuck inside a wall
	dex
	stx player_x
	ldx #$FF                 ; set the subpixel to $FF.  This allows our minuscule velocity to
	stx player_sp_x          ; keep colliding with this wall every frame and allow the push action to continue
	jmp gm_checkright        ; !! note: in case of a potential clip, this might cause lag frames!
gm_checkleft:
	jsr gm_getleftx
	tax
	stx y_crd_temp
	ldy temp1
	lda #gc_left
	jsr gm_collide
	bne gm_collleft          ; if collided, move a pixel to the right & try again
	ldy temp2
	ldx y_crd_temp
	lda #gc_left
	jsr gm_collide
	beq gm_checkdone
gm_collleft:
	ldx #$FF                 ; set the velocity to a minuscule value to
	stx player_vl_x          ; ensure the player doesn't look idle
	stx player_vs_x
	lda playerctrl
	ora #pl_pushing
	ora #pl_wallleft         ; the wall was found on the left.
	sta playerctrl
	lda #defwjmpcoyo
	sta wjumpcoyote
	ldx player_x
	cpx #$F0                 ; compare to [screenWidth-16]
	bcs gm_checkdone         ; if bigger or equal, just bail, we might be stuck in a wall
	inx
	stx player_x
	ldx #0                   ; set the subpixel to 0.  This allows our minuscule velocity to
	stx player_sp_x          ; keep colliding with this wall every frame and allow the push action to continue
	jmp gm_checkleft
gm_checkdone:
	lda player_vl_x
	bpl gm_scroll_r_cond    ; if moving positively, scroll if needed
	rts

; ** SUBROUTINE: gm_checkwjump
; desc: Assigns coyote time if wall is detected near the player.
gm_checkwjump:
	lda #pl_ground
	bit playerctrl
	bne gm_dontsetwcoyote    ; if player is grounded, simply return
	jsr gm_getmidy
	tay
	sty y_crd_temp
	jsr gm_getleftwjx        ; handle the left tile
	tax
	lda #gc_left
	jsr gm_collide
	bne gm_setwcoyoteL
	ldy y_crd_temp
	jsr gm_getrightwjx       ; and now the right tile
	tax
	lda #gc_right
	jsr gm_collide
	beq gm_dontsetwcoyote
	lda playerctrl
	and #(pl_wallleft^$FF)
	sta playerctrl           ; set that a wall was found on the RIGHT side
gm_setwcoyote:
	lda #defwjmpcoyo
	sta wjumpcoyote
gm_dontsetwcoyote:
	rts
gm_setwcoyoteL:
	lda playerctrl
	ora #pl_wallleft
	sta playerctrl           ; set that a wall was found on the LEFT side
	jmp gm_setwcoyote

; ** SUBROUTINE: gm_scroll_r_cond
gm_scroll_r_cond:
	lda player_x
	cmp #scrolllimit
	bcc gm_scroll_ret ; A < scrolllimit
	beq gm_scroll_ret ; A = scrolllimit
gm_scroll_do:
	sec
	sbc #scrolllimit
	cmp #camspeed     ; see the difference we need to scroll
	bcc gm_scr_nofix  ; A < camspeed
	lda #camspeed
gm_scr_nofix:         ; A now contains the delta we need to scroll by
	clc
	tax               ; save the delta as we'll need it later
	adc camera_x      ; add the delta to the camera X
	sta camera_x
	lda #0
	adc camera_x_hi
	and #1
	sta camera_x_hi
	lda #gs_scrstopR  ; check if we overstepped the camera boundary, if needed
	bit gamectrl
	beq gm_scrollnolimit
	lda camlimit
	sta scrchklo
	lda camlimithi
	sta scrchkhi
	lda camlimithi    ; check if [camlimithi,camlimit] < [camera_x_hi,camera_x]
	cmp camera_x_hi
	bcs :+
	lda camlimit
	cmp camera_x
	bcs :+
	lda #2            ; note: carry clear here
	adc scrchkhi
	sta scrchkhi
:	sec
	lda scrchklo
	sbc camera_x
	sta scrchklo
	lda scrchkhi
	sbc camera_x_hi
	bmi gm_camxlimited
	sta scrchkhi
gm_scrollnolimit:
	lda #scrolllimit  ; set the player's X relative-to-the-camera to scrolllimit
	sta player_x
	txa               ; restore the delta to add to camera_rev
	adc camera_rev
	sta camera_rev
	cmp #8
	bcs gm_go_generate; if camera_rev+diff < 8 return
gm_scroll_ret:
	rts
gm_go_generate:
	lda camera_rev    ; subtract 8 from camera_rev
	sec
	sbc #8
	sta camera_rev
	jmp h_gener_col_r
gm_camxlimited:
	lda camlimithi
	sta camera_x_hi
	lda camlimit
	sta camera_x
	lda #gs_scrstodR
	bit gamectrl
	bne :+
	ora gamectrl
	sta gamectrl
:	rts

gm_dash_lock:
	ldx #0
	stx player_vl_x
	stx player_vl_y
	stx player_vs_x
	stx player_vs_y
	jmp gm_dash_update_done
gm_dash_over:
	jmp gm_dash_update_done

gm_defaultdir:
	ldy #0                  ; player will not be dashing up or down
	lda #pl_left
	and playerctrl          ; bit 0 will be the facing direction
	sec                     ; shift it left by 1 and append a 1
	rol                     ; this will result in either 1 or 3. we handle the L+R case by dashing left
	jmp gm_dash_nodir

gm_superjump:
	lda #pl_ground
	bit playerctrl
	beq gm_sjret            ; if player wasn't grounded, then ...
	lda dashdiry
	cmp #1
	bne gm_sj_normal
	; half the jump height here
	lda #((jumpvel >> 1) ^ $FF + 1)
	sta player_vl_y
	lda #((((jumpvel << 7) | (jumpvello >> 1)) ^ $FF + 1) & $FF)
	sta player_vs_y
	jmp gm_superjumph
gm_sj_normal:
	lda #(jumpvel ^ $FF + 1)
	sta player_vl_y
	lda #(jumpvello ^ $FF + 1)
	sta player_vs_y         ; super jump speed is the same as normal jump speed
gm_superjumph:
	lda #superjmphhi
	sta player_vl_x
	lda #superjmphlo
	sta player_vs_x
	lda #pl_left
	bit playerctrl
	beq gm_sjret
	lda player_vl_x
	eor #$FF
	sta player_vl_x
	lda player_vs_x
	eor #$FF
	sta player_vs_x
gm_sjret:
	rts

gm_dash_update:
	; NOTE: dashtime is loaded into A
	sec
	sbc #1
	sta dashtime
	beq gm_dash_over        ; if dashtime is now 0, then finish the dash
	cmp #(defdashtime-dashchrgtm)
	beq gm_dash_read_cont   ; if it isn't exactly defdashtime-dashchrgtm, let physics run its course
	bcs gm_dash_lock        ; dash hasn't charged
	jmp gm_dash_after
gm_dash_read_cont:
	lda p1_cont
	and #%00001111          ; check if holding any direction
	beq gm_defaultdir       ; if not, determine the dash direction from the facing direction	
	lda p1_cont
	and #%00001100          ; get just the up/down flags
	lsr
	lsr
	tay                     ; use them as an index into the dashY table
	lda p1_cont
	and #%00000011          ; get just the left/right flags
	; if horizontal flags are 0, then the vertical flags must NOT be zero, otherwise we ended up in gm_defaultdir
gm_dash_nodir:
	tax                     ; this is now an index into the X table
	stx dashdirx
	sty dashdiry
	lda #0
	sta player_vs_x
	sta player_vs_y
	lda dashY, y
	sta player_vl_y
	lda dashX, x
	bmi gm_leftdash
	sta player_vl_x
	jmp gm_dash_update_done
gm_leftdash:
	sta player_vl_x
	lda playerctrl
	ora #pl_left
	sta playerctrl
	jmp gm_dash_update_done
gm_dash_after:
	; this label is reached when the dash is "completed", i.e. it gives no more
	; boost to the player and physics are enabled.
	lda #%00000011
	bit p1_cont
	beq gm_dash_noflip  ; not pressing a direction, so no need to flip the character
	lda playerctrl
	ora #pl_left
	sta playerctrl      ; set the left bit...
	lda #cont_right     ; assumes cont_right == 1
	and p1_cont
	eor playerctrl
	sta playerctrl      ; so that, if right is pressed, then we can flip it back
gm_dash_noflip:
	lda jumpcoyote
	beq gm_dash_nosj
	lda jumpbuff
	beq gm_dash_nosj    ; if there is jump buffer and coyote time, then perform a super jump
	jsr gm_superjump
gm_dash_nosj:
	jmp gm_dash_update_done

gm_physics:
	lda #pl_dead
	bit playerctrl
	beq :+
	rts
:	jsr gm_jumpgrace
	lda dashtime
	bne gm_dash_update
	jsr gm_gravity
	jsr gm_controls
gm_dash_update_done:
	jsr gm_drag
	jsr gm_sanevels
	jsr gm_applyy
	jsr gm_applyx
	jmp gm_checkwjump
	
; ** SUBROUTINE: gamemode_init
gm_game_init:
	ldx #$FF
	stx animmode
	inx
	stx ppu_mask      ; disable rendering
	jsr gm_game_clear_all_wx
	jsr vblank_wait
	lda #$20
	jsr clear_nt      ; clear the two nametables the game uses
	lda #$24
	jsr clear_nt
	ldy init_palette - lastpage
	jsr load_palette  ; load game palette into palette RAM
	jsr gm_set_level_1
	jsr h_gener_ents_r
	jsr h_gener_mts_r
	ldy #$00          ; generate tilesahead columns
loop2:
	tya
	pha
	jsr h_gener_col_r
	jsr h_flush_col_r
	jsr h_flush_pal_r_cond
	pla
	tay
	iny
	cpy #tilesahead
	bne loop2
	
	lda #(gs_1stfr|gs_turnon)
	sta gamectrl
	jsr vblank_wait
	jmp gm_game_update

; ** GAMEMODE: gamemode_game
gamemode_game:
	lda gamectrl
	and #gs_1stfr
	beq gm_game_init
gm_game_update:
	jsr gm_physics
	jsr gm_anim_player
	jsr gm_draw_player
	jsr gm_draw_dead
	jsr gm_unload_os_ents
	jsr gm_draw_entities
	jsr gm_allocate_palettes
	
	lda #cont_select
	bit p1_cont
	bne gm_titleswitch
	jmp game_update_return

; ** SUBROUTINE: gm_titleswitch
gm_titleswitch:
	lda #gm_title
	sta gamemode
	lda #0
	sta titlectrl
	jmp game_update_return

dashX:
	.byte $00  ; --
	.byte $04  ; -R
	.byte $FC  ; L-
	.byte $FC  ; LR
dashY:
	.byte $00  ; --
	.byte $05  ; -D
	.byte $FB  ; U-
	.byte $00  ; UD

; ** SUBROUTINE: gm_game_clear_all_wx
; desc: Clears ALL game variables with the X register.
;       Unlike gm_game_clear_all_wx, this clears data that's necessary across,
;       for example, respawn transitions.
gm_game_clear_all_wx:
	stx transoff
	stx lvlyoff

; ** SUBROUTINE: gm_game_clear_wx
; desc: Clears game variables with the X register.
gm_game_clear_wx:
	stx gamectrl      ; clear game related fields to zero
	stx ntwrhead
	stx arwrhead
	stx player_y
	stx player_sp_x
	stx player_sp_y
	stx camera_x
	stx camera_y
	stx camera_x_hi
	stx player_x_hi
	stx tr_scrnpos
	stx lvladdr
	stx lvladdrhi
	stx playerctrl
	stx player_vl_x
	stx player_vs_x
	stx player_vl_y
	stx player_vs_y
	stx dashtime
	stx dashcount
	stx animmode
	stx jumpbuff
	stx jumpcoyote
	stx wjumpcoyote
	
	; before waiting on vblank, clear game reserved spaces ($0300 - $0700)
	; note: ldx #$00 was removed because it's already 0!
gm_game_clear:
	sta $300,x
	sta $400,x
	sta $500,x
	sta $600,x
	inx
	bne gm_game_clear
