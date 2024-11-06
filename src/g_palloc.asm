; Copyright (C) 2024 iProgramInCpp

; ** SUBROUTINE: gm_allocate_palette
; desc: Allocates a palette for use while rendering.
;       Returns the palette slot given, or one, if no palette slots were left.
;
; arguments:
;	A - The palette ID (prg_main::sprite_palettes) to load.
;
; returns:
;	A - The palette index returned.
;
; clobbers:
;	temp1
gm_allocate_palette:
	tax
	lda palidxs, x
	beq @notLoaded
	
	; palette was loaded, so just return that index
	rts
	
@notLoaded:
	txa                ; transfer the original thing back into A
	ldy sprpalcount
	cpy #3             ; check if 3 palettes have been written
	bne @mayAllocate
	
	; may not allocate because there was not enough space!
	lda #1
	rts
	
@mayAllocate:
	; palette count already loaded in Y
	
	; multiply by three, and store in X
	sta sprpaltemp
	asl
	clc
	adc sprpaltemp
	tax
	
	lda @indexTable, y
	tay
	
	; now write 3 bytes
	lda sprite_palettes, x
	sta spritepals, y
	inx
	iny
	lda sprite_palettes, x
	sta spritepals, y
	inx
	iny
	lda sprite_palettes, x
	sta spritepals, y
	iny
	
	; Well sprpaltemp still contains the original palette index
	ldx sprpaltemp
	
	; then increment the amount of loaded palettes
	inc sprpalcount
	lda sprpalcount
	sta palidxs, x
	
	; and return!
	rts

@indexTable:	.byte 0,3,6

; ** SUBROUTINE: gm_clear_palette_allocator
; desc: Clears the palette allocator and copies the current
;       sprite palette into the old sprite palette. Run every frame.
gm_clear_palette_allocator:
	ldy #0
	sty sprpalcount
	
:	lda spritepals, y
	sta spritepalso,y
	
	;;;; DEBUG ;;;;
	; TODO: Remove on release
	lda #0
	sta spritepals, y
	;;;; DEBUG DONE ;;;;
	
	iny
	cpy #9
	bne :-
	
	ldy #0
	lda #0
:	sta palidxs, y
	iny
	cpy #pal_max
	bne :-
	
	rts

; ** SUBROUTINE: gm_check_updated_palettes
; desc: Checks for updated palettes and enqueues an upload for each.
gm_check_updated_palettes:
	ldy #0
@loop:
	lda spritepals,  y
	cmp spritepalso, y
	beq @dontSet
	lda @flags, y
	ora nmictrl2
	sta nmictrl2
@dontSet:
	iny
	cpy #9
	bne @loop
	rts

@flags:
	.byte nc2_updpal1,nc2_updpal1,nc2_updpal1
	.byte nc2_updpal2,nc2_updpal2,nc2_updpal2
	.byte nc2_updpal3,nc2_updpal3,nc2_updpal3
