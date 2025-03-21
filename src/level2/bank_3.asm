; Copyright (C) 2025 iProgramInCpp

.segment "PRG_LVL2D"
.include "rooms/3.asm"

level2_mirror_frame_0:
	.byte $61,$71,$72,$79
	.byte $62,$72,$73,$7A
	.byte $63,$73,$74,$7B
	.byte $64,$74,$75,$7C
	.byte $65,$75,$6D,$7D
	.byte $66,$76,$6E,$7E
level2_mirror_frame_1:
	.byte $61,$71,$72,$5F
	.byte $62,$72,$73,$7A
	.byte $63,$73,$74,$7B
	.byte $64,$4F,$75,$7C
	.byte $65,$75,$6D,$7D
	.byte $66,$76,$6E,$7E
level2_mirror_frame_2:
	.byte $61,$71,$72,$5F
	.byte $62,$72,$16,$06
	.byte $63,$73,$27,$7B
	.byte $64,$4F,$28,$7C
	.byte $65,$75,$6D,$7D
	.byte $66,$76,$6E,$7E
level2_mirror_frame_3:
	.byte $61,$01,$01,$01
	.byte $69,$01,$01,$01
	.byte $6A,$01,$01,$01
	.byte $6B,$01,$01,$01
	.byte $6C,$01,$01,$01
	.byte $66,$01,$01,$01
level2_mirror_frame_4:
	.byte $61,$01,$01,$26
	.byte $69,$01,$17,$01
	.byte $6A,$02,$18,$01
	.byte $6B,$03,$19,$29
	.byte $6C,$01,$01,$01
	.byte $66,$01,$01,$01
level2_mirror_frame_5:
	.byte $04,$0A,$1A,$2A
	.byte $05,$0B,$1B,$2B
	.byte $63,$0C,$1C,$2C
	.byte $07,$0D,$1D,$2D
	.byte $08,$0E,$1E,$2E
	.byte $09,$0F,$1F,$2F

level2_db_opening_row_1: .byte $41,$42,$41,$42,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$36,$42
level2_db_opening_row_2: .byte $4C,$5B,$4D,$5D,$55,$42,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$47,$5C
level2_db_opening_row_3: .byte $00,$00,$00,$00,$00,$4D,$58,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$42,$43,$56,$00
level2_db_opening_row_4: .byte $00,$00,$00,$00,$00,$5B,$57,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$41,$41,$56,$5C,$5D,$00,$00
level2_db_opening_row_5: .byte $00,$00,$00,$00,$00,$00,$55,$42,$43,$41,$42,$37,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$41,$41,$56,$4C,$5B,$00,$00,$00,$00,$00
level2_db_opening_row_6: .byte $00,$00,$00,$00,$00,$00,$00,$5D,$5C,$4C,$4D,$55,$43,$41,$44,$F8,$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF,$FD,$49,$5C,$4E,$00,$00,$00,$00,$00,$00,$00,$00
level2_db_closing_row_1: .byte $00,$00,$00,$4B,$57,$00,$00,$00,$00,$00,$00,$36,$42,$42,$41,$41,$41,$41,$42,$42,$42,$43,$43,$42,$42,$43,$41,$42,$44,$00,$00,$47,$4C,$00,$00,$00
level2_db_closing_row_2: .byte $00,$00,$00,$4C,$58,$00,$00,$00,$40,$41,$41,$56,$5C,$5D,$5C,$4D,$4C,$5E,$5B,$4D,$4D,$4C,$5C,$4C,$5E,$5D,$4C,$4D,$55,$43,$41,$56,$00,$00,$00,$00
level2_db_closing_row_3: .byte $00,$00,$00,$00,$55,$41,$42,$43,$56,$5D,$4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4C,$5E,$00,$00,$00,$00,$00
level2_db_closing_row_4: .byte $00,$00,$00,$00,$00,$5E,$5C,$4D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
level2_db_opening_empty: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; would move to bank_3.asm, but doesn't work, since $26 (38) bytes isn't enough (we need $30 or 48)
level2_s_mirror_offsets:
	.byte 0, 5, 10, 15, 20, 25, 30, 35

level2_s_mirror:
	.byte $00,$60,$70,$68,$78
	.byte $3A,$61,$71,$72,$79
	.byte $3B,$62,$72,$73,$7A
	.byte $3C,$63,$73,$74,$7B
	.byte $3D,$64,$74,$75,$7C
	.byte $3E,$65,$75,$6D,$7D
	.byte $3F,$66,$76,$6E,$7E
	.byte $00,$67,$77,$6F,$7F

.proc level2_revealdb_row
	lda roombeglo2
	tax
	sta temp11
	clc
	adc #36          ; the other end
	and #$1F         ; get its X in nametable coordinates
	sta wrcountHR2   ; that'll be how many bytes we need to write
	
	lda #36
	sec
	sbc wrcountHR2
	sta wrcountHR1
	
	; calculate the ppu addresses we need to write to
	jsr h_calcppuaddr
	
	lda clearpalo
	sta ppuaddrHR1
	and #%11100000
	sta ppuaddrHR2
	
	lda clearpahi
	sta ppuaddrHR1+1
	eor #$04
	sta ppuaddrHR2+1
	
	ldy #0
	sty wrcountHR3
	sty wrcountHP1
	sty wrcountHP2
	
	lda temp11
	and #$1F
	tax
@writeLoop:
	lda (setdataaddr), y
	cpx #32
	bcs @writeOtherHalf
	sta temprow1, y
	inx
	iny
	cpy #36
	bne @writeLoop
	beq @endWriteLoop

@writeOtherHalf:
	sta temprow2-32, x
	inx
	iny
	cpy #36
	bne @writeLoop
	
@endWriteLoop:
	lda nmictrl
	ora #nc_flushrow
	sta nmictrl
	
	ldx temp1
	rts
.endproc

.proc level2_revealdb_row2
	lda temp9
	ldx temp10
	ldy temp11
	jmp level2_revealdb_row
.endproc
