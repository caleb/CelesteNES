
; ** SUBROUTINE: h_get_tile
; desc:    Gets the value of a tile in loaded areaspace for the horizontal layout
;          (equivalent of the C code "areaspace[y * 32 + x]")
; arguments:
;     x - X coordinate
;     y - Y coordinate
; returns:  a - Tile value
; clobbers: a,x
h_get_tile:
	tya
	asl                 ; shift left by 5.  The last shift will put the bit in carry
	asl
	asl
	asl
	asl
	bcc h_load_4
	sta x_crd_temp
	txa
	clc
	adc x_crd_temp
	sta x_crd_temp
	ldx x_crd_temp
	lda areaspace+$100, x
	rts
h_load_4:
	sta x_crd_temp
	txa
	clc
	adc x_crd_temp
	sta x_crd_temp
	ldx x_crd_temp
	lda areaspace, x
	rts

; ** SUBROUTINE: h_set_tile
; desc:    Sets the value of a tile in loaded areaspace for the horizontal layout
;          (equivalent of the C code "areaspace[y * 32 + x]")
; arguments:
;     x - X coordinate
;     y - Y coordinate
;     a - Tile value
; clobbers: a,x
h_set_tile:
	pha
	tya
	asl                 ; shift left by 5.  The last shift will put the bit in carry
	asl
	asl
	asl
	asl
	bcc h_store_4
	sta x_crd_temp
	txa
	clc
	adc x_crd_temp
	sta x_crd_temp
	ldx x_crd_temp
	pla
	sta areaspace+$100, x
	rts
h_store_4:
	sta x_crd_temp
	txa
	clc
	adc x_crd_temp
	sta x_crd_temp
	ldx x_crd_temp
	pla
	sta areaspace, x
	rts

; ** SUBROUTINE: h_generate_metatiles
; desc:    Generates a column of metatiles ahead of the visual column render head.
h_generate_metatiles:
	ldy #$00
h_genmtloop:
	jsr rand
	ldx arwrhead
	jsr h_set_tile
	iny
	cpy #$0F
	bne h_genmtloop
	ldx arwrhead
	inx
	txa
	and #$1F
	sta arwrhead
	rts

; ** SUBROUTINE: h_generate_if_needed
; desc:    Generates a column of metatiles ahead of the visual column render head,
;          if needed. Clears the gs_gentiles bit from gamectrl.
h_generate_if_needed:
	lda #gs_gentiles
	bit gamectrl
	bne h_gm_generate
	rts
h_gm_generate:
	lda gamectrl
	and #(gs_gentiles ^ %11111111)
	sta gamectrl
	jmp h_generate_metatiles

; ** SUBROUTINE: h_generate_column
; desc:    Generates a vertical column of characters corresponding to the respective
;          metatiles in area space.
; assumes: PPUCTRL has the IRQ bit set to zero (dont generate interrupts)
h_generate_column:
	lda #ctl_irq_i32
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
h_gen_wrloop:
	lda ntwrhead
	lsr                 ; get the tile coordinate
	tax
	jsr h_get_tile
	
	; TODO
	; simply write it down twice
	sta ppu_data
	sta ppu_data

	iny
	cpy #15
	bne h_gen_wrloop

	; advance the write head but keep it within 64
	ldx ntwrhead
	inx
	txa
	and #$3F
	sta ntwrhead
	
	; set the PPUCTRL increment back to 1
	lda ctl_flags
	ora #ctl_irq_off
	sta ppu_ctrl
	
	; check if we were writing the odd column
	; generate a column of metatiles if so
	lda ntwrhead
	and #$01
	bne h_gen_dont
	lda gamectrl
	ora #gs_gentiles
	sta gamectrl
h_gen_dont:
	rts

; ** SUBROUTINE: gm_increment_ptr
; ** SUBROUTINE: gm_decrement_ptr
; args: x - offset in zero page to (in/de)crement 16-bit address
; clobbers: a
gm_increment_ptr:
	lda #00
	sec
	adc $0000, x
	sta $0000, x
	rts
gm_decrement_ptr:
	lda #00
	sec
	sbc $0000, x
	sta $0000, x
	rts
; ** SUBROUTINE: gm_set_level_ptr
; ** SUBROUTINE: gm_set_room_ptr
; ** SUBROUTINE: gm_set_tile_head
; ** SUBROUTINE: gm_set_ent_head
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
gm_set_tile_head:
	stx arrdheadlo
	sty arrdheadhi
	rts
gm_set_ent_head:
	stx entrdheadlo
	sty entrdheadhi
	rts
	
; ** SUBROUTINE: gm_read_level
; ** SUBROUTINE: gm_read_room
; ** SUBROUTINE: gm_read_tile
; ** SUBROUTINE: gm_read_ent
; returns: a - the byte of data read in
; clobbers: x
gm_read_tile:
	ldx #0
	lda (arrdheadlo,x)
	pha
	ldx <arrdheadlo
	jsr gm_increment_ptr
	pla
	rts
gm_read_ent:
	ldx #0
	lda (entrdheadlo,x)
	pha
	ldx <entrdheadlo
	jsr gm_increment_ptr
	pla
	rts

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
	
	; load tile pointer from room pointer
	ldy #7
	lda (roomptrlo),y
	tax
	iny
	lda (roomptrlo),y
	tay
	jsr gm_set_tile_head
	
	; load tile pointer from room pointer
	ldy #9
	lda (roomptrlo),y
	tax
	iny
	lda (roomptrlo),y
	tay
	jsr gm_set_ent_head
	rts

; ** SUBROUTINE: gm_set_level_1
gm_set_level_1:
	ldx #<lvl_1
	ldy #>lvl_1
	jsr gm_set_level_ptr
	ldy #2
	jsr gm_fetch_room
	rts
	
; ** SUBROUTINE: gamemode_init
gm_game_init:
	lda #$00
	sta gamectrl      ; clear some game fields
	sta ntwrhead
	sta arwrhead
	sta ppu_mask      ; disable rendering
	sta camera_x
	lda #$20
	jsr clear_nt      ; clear the two nametables the game uses
	lda #$24
	jsr clear_nt
	jsr gm_set_level_1
	jsr h_generate_metatiles
	ldy #$00          ; generate tilesahead columns
loop2:
	tya
	pha
	jsr h_generate_if_needed
	jsr h_generate_column
	pla
	tay
	iny
	cpy #tilesahead
	bne loop2
	
	jsr ppu_rstaddr   ; reset PPUADDR
	lda #def_ppu_msk  ; turn rendering back on
	sta ppu_mask
	jsr vblank_wait
	
	lda gamectrl
	ora #gs_1stfr
	sta gamectrl
	jmp gm_game_update

; ** GAMEMODE: gamemode_game
gamemode_game:
	lda gamectrl
	and #gs_1stfr
	beq gm_game_init
gm_game_update:
	jsr h_generate_if_needed
	
	; for now, check if the right key is pressed, and advance the
	; camera and column generation logic
	lda #cont_right
	bit p1_cont
	beq gm_dontright
	
	; add camspeed to camera_x / camera_x_hi. make sure camera_x_hi
	; is 0 and 1 only.
	lda #camspeed
	clc
	adc camera_x
	sta camera_x
	lda #0
	adc camera_x_hi
	and #1
	sta camera_x_hi
	lda #7
	bit camera_x
	bne gm_dontright
	
	lda gamectrl
	ora #gs_gencols
	sta gamectrl
gm_dontright:
	jmp game_update_return

