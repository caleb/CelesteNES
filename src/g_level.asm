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
	clc
	lda ntwrhead
	sbc #2
	and #$20
	lsr
	lsr
	lsr
	clc
	adc #$23
	tax
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
@loop:
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
	bne @loop
	rts

; ** SUBROUTINE: h_flush_pal_u_reload
; desc:    Reloads the PPU address to the offset within the attribute table
;          from ntwrhead, ntrowhead.
h_flush_pal_u_reload:
	lda ntwrhead
	and #$20
	lsr
	lsr
	lsr
	clc
	adc #$23
	tay
	
	; add the Y coordinate
	lda ntrowhead  ; 000yyyyy [0 - 29]
	clc
	adc #4
	asl            ; 00yyyyy0
	and #%00111000 ; 00yyy000
	ora #%11000000 ; $C0
	sta y_crd_temp
	
	; add the X coordinate
	lda ntwrhead   ; 00sxxxxx
	lsr            ; 000sxxxx
	lsr            ; 0000sxxx
	and #%00000111 ; 00000xxx
	clc
	adc y_crd_temp
	tax
	
	jmp ppu_loadaddr

; ** SUBROUTINE: h_flush_pal_u
; desc:    Flushes a generated palette row in temppalH to the screen.
; assumes: PPUCTRL has the IRQ bit set to zero (dont generate interrupts), increment to 1
h_flush_pal_u:
	jsr h_flush_pal_u_reload
	
	; calculate the boundary where we should reload the address
	; the equation boils down to 16-temp7, or 8-temp7, where
	; temp7 is ntwrhead/4
	lda ntwrhead
	lsr
	lsr
	sta temp7
	
	lda #$20
	bit ntwrhead
	beq @do8
	; 16 - temp7
	lda #16
	jmp @dodone
@do8:
	lda #8
@dodone:
	sec
	sbc temp7
	sta temp6
	
	; temp6 now holds that boundary. we want temp7 to hold the temporary
	; ntwrhead while reloading the PPU address
	lda ntwrhead
	and #$20
	eor #$20
	sta temp7
	
	ldy #0
@loop:
	lda temppalH, y
	sta ppu_data
	
	iny
	
	; check if we should reload the address and do so
	cpy temp6
	bne :+
	
	sty temp8
	lda ntwrhead
	pha
	lda temp7
	sta ntwrhead
	jsr h_flush_pal_u_reload
	pla
	sta ntwrhead
	ldy temp8
	
:	cpy #8
	bne @loop
	rts
	
; ** SUBROUTINE: h_flush_row_reload
; desc:    Reloads the PPU address based on the ntwrhead and ntrowhead.
h_flush_row_reload:
	; the PPU address we want to start writing to is
	; 0x2000 + (ntwrhead / 32) * 0x400 + (ntwrhead % 32) + ntrowhead * 0x20
	lda #$00
	sta tmp_sprx
	lda #$20
	sta tmp_spry
	
	; (add ntwrhead / 32) * 0x400
	lda ntwrhead
	and #$20
	beq :+
	lda #$24
	sta tmp_spry
:	; add ntwrhead % 32
	lda ntwrhead
	and #$1F
	clc
	adc tmp_sprx
	sta tmp_sprx
	; add (ntrowhead % 8) * 0x20 + (ntrowhead / 8) * 0x100
	lda ntrowhead
	lsr
	lsr
	lsr
	sta temp6
	
	lda ntrowhead
	ror
	ror
	ror
	ror
	and #%11100000
	clc
	adc tmp_sprx
	sta tmp_sprx
	lda tmp_spry
	adc temp6
	sta tmp_spry
	
	; done!! now load that address.
	ldy tmp_spry
	ldx tmp_sprx
	jsr ppu_loadaddr
	
	rts

; ** SUBROUTINE: h_flush_row_u
; desc:    Flushes a generated row in temprow to the screen.
; assumes: we're in vblank or rendering is disabled
h_flush_row_u:
	jsr h_flush_row_reload
	
	lda ntwrhead
	pha
	
	; and start writing.
	ldy #0
@loop:
	lda temprow, y
	sta ppu_data
	
	iny
	cpy #$20
	beq @doneloop
	
	; check if this increment would move us to the next name table
	tya
	clc
	adc ntwrhead
	and #$20
	sta temp5
	
	lda ntwrhead
	and #$20
	eor temp5
	
	; if they're on different name tables, then A != 0
	beq @loop
	
	sty temp5
	lda ntwrhead
	clc
	adc temp5
	sta ntwrhead
	jsr h_flush_row_reload
	ldy temp5
	jmp @loop

@doneloop:
	
	pla
	sta ntwrhead
	
	; advance the row head but keep it within 30
	ldx ntrowhead
	bne :+
	ldx #30
:	dex
	stx ntrowhead
	
	rts

; ** SUBROUTINE: h_flush_col_r
; desc:    Flushes a generated column in tempcol to the screen
; assumes: we're in vblank or rendering is disabled
h_flush_col_r:
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

; ** SUBROUTINE: h_gener_row_u
; desc:    Generates a horizontal row of characters corresponding to the respective
;          metatiles in area space, upwards.
h_gener_row_u:
	ldy #0
	
@loop:
	sty temp6
	lda ntwrhead
	clc
	adc temp6
	and #$3F
	tax                      ; the X coordinate
	jsr h_comp_addr
	
	ldy ntrowhead2           ; the Y coordinate
	lda (lvladdr), y
	tax
	lda metatiles, x
	
	ldy temp6
	sta temprow, y
	
	iny
	cpy #$20
	bne @loop
	
	; now that the row has been flushed, it's time to set the gamectrl2 flag
	lda #g2_flstrowU
	ora gamectrl2
	sta gamectrl2
	
	; check if (ntrowhead % 4) == 0
	lda ntrowhead
	and #$03
	bne @dontgeneratepal
	
	; start reading palette data.
	; palette data is loaded in "loadedpals". Indexing: loadedpals[x * 8 + y].
	; therefore we'll need to add 8 every load
	ldy #0
	lda ntrowhead
	lsr                  ; divide by 4. ntrowhead is a tile coordinate. convert to a
	lsr                  ; palette grid coordinate.
@ploop:
	pha                  ; push A to restore it later
	tax                  ; use it as an index into loadedpals.
	lda loadedpals, x
	sta temppalH, y      ; store it into temppalH
	pla                  ; restore A
	clc
	adc #8               ; and add 8 to it.
	iny
	cpy #8
	bne @ploop
	
	lda #g2_flstpalU
	ora gamectrl2
	sta gamectrl2
	
@dontgeneratepal:
	rts
	

; ** SUBROUTINE: h_gener_col_r
; desc:    Generates a vertical column of characters corresponding to the respective
;          metatiles in area space, on the right side of the scroll seam.  Also
;          generates the next column of tiles and the palette if necessary.
h_gener_col_r:
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
@loop:                        ; each iteration will write 1 character tile for one metatile.
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
	bne @loop

	lda #gs_flstcolR          ; set the gamectrl gs_flstcolR flag
	ora gamectrl
	sta gamectrl
	
	lda #gs_dontgen
	bit gamectrl
	bne :+
	
	jsr h_gener_ents_r
	jsr h_gener_mts_r         ; generate a new column of meta-tiles and entities
	
:	lda ntwrhead              ; check if we're writing the 3rd odd column
	and #$03
	cmp #$03
	beq h_palette_data_column
	rts

; ** SUBROUTINE: h_palette_data_column
; desc: Reads a single column of palette data.
; NOTE: sets gs_flstpalR in gamectrl!
h_palette_data_column:
	ldy #0                    ; start reading palette data.
@ploop:
	jsr gm_read_pal
	cmp #$FE
	beq @phaveFE              ; break out of this loop
	cmp #$FF
	bne @pnoFF
	
	lda palrdheadlo
	bne :+
	dec palrdheadhi
:	dec palrdheadlo
	
	lda #0
@pnoFF:
	sta temppal,y
	iny
	cpy #8
	bne @ploop
@phaveFE:
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
	lda arwrhead
	sta trarwrhead
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
	lda #0
	sta (lvladdr), y
	iny
	sta (lvladdr), y
	iny
	
	clc                   ; loop done, increment arwrhead, ensuring it rolls over after 63
	lda #1
	adc arwrhead
	and #$3F
	sta arwrhead
	rts

h_generents_lvlend:
	lda entrdheadlo       ; decrement the stream pointer...
	bne :+
	dec entrdheadhi
:	dec entrdheadlo       ; and return
	rts

h_generents_scrnext:
	jsr gm_adv_ent        ; advance the entity stream
	clc
	lda #1                ; NOTE: assumes arwrhead is between 0-63! change if/when expanding.
	adc tr_scrnpos
	sta tr_scrnpos
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
	sec
	sbc roombeglo2
	lsr
	lsr
	lsr
	lsr
	lsr                   ; divide by 32 to get the screen number
	and #1                ; NOTE: assumes arwrhead is between 0-63! change if/when expanding.
	sta temp2
	lda tr_scrnpos
	and #1
	cmp temp2
	beq :+
	rts                   ; if the screen numbers are not equal, then return
:	lda arwrhead
	and #$1F              ; cap it between 0-31, this will be an in-screen coordinate.
	asl
	asl
	asl                   ; now check if the X coordinate is bigger than the area write head.
	sec
	sbc roombeglo
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
	lda #0
	sta sprspace+sp_entspec1, x
	sta sprspace+sp_entspec2, x
	sta sprspace+sp_entspec3, x
	sta sprspace+sp_entspec4, x
	sta sprspace+sp_entspec5, x
	sta sprspace+sp_entspec6, x
	sta sprspace+sp_x_lo, x
	sta sprspace+sp_y_lo, x
	
	lda temp3
	cmp #e_rerefill
	bne :+
	lda #e_refill             ; this is a refill with regeneration. turn it into a
	sta sprspace+sp_kind, x   ; normal refill entity with the erf_regen flag set.
	lda #erf_regen
	sta sprspace+sp_refill_flags, x
	jmp h_generents_cont
:
	; some more exceptional entity IDs here...
	sta sprspace+sp_kind, x
h_generents_cont:
	lda temp2
	sta sprspace+sp_y, x
	
	; load the X coordinate, and add the room beginning pixel and the current screen pos
	clc
	lda temp1
	adc roombeglo
	sta sprspace+sp_x, x
	
	lda tr_scrnpos
	adc roombeghi
	sta sprspace+sp_x_pg, x
	and #1
	sta sprspace+sp_x_hi, x
	
	rts

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
	
	lda #bank_spr
	jsr mmc1_selsprbank
	
	; fallthru

; ** SUBROUTINE: gm_set_room
; args: Y - room number
; assumes: you're loading a new level
gm_set_room:
	iny
	iny
	jsr gm_fetch_room
	rts
