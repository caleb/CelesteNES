level1_r1_p:
	.byte $00,$00,$00,$00,$00,$00,$50,$00
	.byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$FE
	.byte $FF
level1_r1_e:
	.byte $FF
level1_r1_t:
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DB,$01,$00,$00,$DB,$01,$00,$00
	.byte $DE,$DE,$DE,$DE,$DE,$DE,$DE,$DE
	.byte $FF
level1_r1:
	.byte 1, 0, 12
	.byte 1, 0
	.byte 255, 255, 255, 2
	.byte 255, 255, 255, 254
	.byte 0
	.word level1_r1_t
	.word level1_r1_p
	.word level1_r1_e
level1_r2_p:
	.byte $00,$00,$00,$00,$00,$5F,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$AA,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$99,$55,$00
	.byte $00,$00,$00,$A0,$AA,$AA,$55,$00
	.byte $00,$00,$00,$20,$02,$00,$00,$00
	.byte $00,$00,$00,$00,$A0,$5A,$55,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FF
level1_r2_e:
	.byte $FF
level1_r2_t:
	.byte $D8,$05,$13,$C4,$D7,$43,$05,$14
	.byte $C4,$D7,$42,$05,$15,$C4,$D7,$41
	.byte $05,$16,$C4,$D8,$23,$2B,$00,$00
	.byte $2B,$2C,$D8,$21,$2B,$2C,$2B,$34
	.byte $29,$D8,$23,$29,$29,$29,$20,$00
	.byte $D8,$1E,$C5,$DE,$DE,$DE,$DE,$D7
	.byte $1B,$C6,$D7,$05,$0D,$0E,$0E,$0E
	.byte $03,$00,$D7,$21,$2D,$00,$13,$15
	.byte $39,$0E,$D7,$23,$2B,$00,$00,$00
	.byte $16,$17,$D0,$1D,$28,$27,$27,$27
	.byte $28,$28,$37,$32,$C4,$17,$D0,$21
	.byte $A6,$2B,$32,$00,$00,$13,$15,$16
	.byte $10,$D0,$21,$2F,$00,$00,$2F,$2D
	.byte $2C,$2C,$2B,$34,$38,$10,$10,$00
	.byte $D0,$21,$2B,$2B,$34,$29,$2A,$29
	.byte $29,$2A,$20,$C4,$D0,$1E,$2A,$2A
	.byte $20,$CA,$DE,$DE,$DE,$D4,$1D,$1F
	.byte $C8,$D4,$23,$35,$28,$27,$0C,$0D
	.byte $0B,$0C,$0B,$0D,$D4,$22,$2E,$34
	.byte $29,$11,$12,$10,$3A,$13,$14,$D4
	.byte $1E,$29,$20,$C4,$02,$12,$11,$DE
	.byte $DE,$DE,$DE,$FF
level1_r2:
	.byte 1, 0, 12
	.byte 1, 0
	.byte 255, 255, 255, 4
	.byte 255, 255, 255, 248
	.byte 7
	.word level1_r2_t
	.word level1_r2_p
	.word level1_r2_e
level1_r3_p:
	.byte $00,$00,$C0,$05,$00,$00,$00,$00
	.byte $00,$00,$B0,$0A,$00,$00,$00,$00
	.byte $00,$80,$2A,$00,$00,$00,$00,$00
	.byte $44,$A5,$00,$00,$00,$00,$00,$00
	.byte $55,$A5,$00,$00,$00,$00,$00,$05
	.byte $FE,$55,$65,$00,$00,$00,$00,$00
	.byte $01,$00,$13,$05,$00,$00,$00,$00
	.byte $00,$FF
level1_r3_e:
	.byte $FF
level1_r3_t:
	.byte $D6,$05,$19,$C6,$D6,$05,$18,$C6
	.byte $D6,$05,$1A,$C6,$D5,$40,$05,$16
	.byte $C6,$D5,$41,$21,$32,$C6,$D6,$21
	.byte $33,$C6,$D6,$21,$2F,$C6,$D5,$1D
	.byte $37,$30,$C6,$D3,$1D,$28,$37,$C8
	.byte $D3,$21,$2C,$C9,$D0,$1D,$28,$28
	.byte $37,$CA,$D0,$21,$2B,$32,$CB,$CE
	.byte $84,$93,$21,$2C,$CC,$CE,$85,$94
	.byte $21,$2B,$CC,$CA,$51,$5D,$6A,$77
	.byte $86,$95,$21,$2D,$CC,$CA,$52,$5E
	.byte $6B,$78,$87,$96,$21,$2C,$CC,$C9
	.byte $49,$53,$5F,$6C,$79,$88,$97,$21
	.byte $2E,$CC,$C9,$4A,$54,$60,$6D,$7A
	.byte $89,$98,$21,$2B,$CC,$C8,$44,$4B
	.byte $55,$61,$6E,$7B,$8A,$99,$21,$2F
	.byte $CC,$C8,$45,$4C,$56,$62,$6F,$7C
	.byte $8B,$9A,$21,$30,$CC,$C8,$46,$4D
	.byte $57,$63,$70,$7D,$8C,$9B,$21,$2F
	.byte $CC,$C8,$47,$4E,$58,$64,$71,$7E
	.byte $8D,$9C,$21,$2B,$CC,$C8,$48,$A1
	.byte $A3,$59,$65,$72,$7F,$8E,$9D,$21
	.byte $2F,$CC,$C9,$4F,$5A,$66,$73,$80
	.byte $8F,$9E,$21,$2D,$CC,$C9,$50,$5B
	.byte $67,$74,$81,$90,$9F,$21,$CD,$CA
	.byte $A1,$A2,$68,$75,$82,$91,$A0,$21
	.byte $CD,$CA,$5C,$69,$76,$83,$92,$A1
	.byte $A1,$05,$CD,$D0,$05,$14,$CC,$CF
	.byte $40,$05,$15,$CC,$CF,$41,$02,$11
	.byte $3A,$CB,$D2,$05,$CB,$D2,$05,$13
	.byte $CA,$FF
level1_r3:
	.byte 0, 0, 0
	.byte 0, 0
	.byte 0, 0, 0, 6
	.byte 0, 0, 0, 252
	.byte 5
	.word level1_r3_t
	.word level1_r3_p
	.word level1_r3_e
level1_r4_p:
	.byte $00,$00,$09,$44,$00,$00,$00,$00
	.byte $00,$00,$AA,$11,$00,$00,$00,$00
	.byte $00,$00,$10,$11,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$40,$44,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$FF
level1_r4_e:
	.byte $FF
level1_r4_t:
	.byte $D6,$06,$13,$C6,$D6,$05,$14,$C6
	.byte $D6,$23,$C7,$D6,$22,$C4,$16,$15
	.byte $14,$D6,$21,$2D,$00,$00,$38,$0F
	.byte $10,$12,$D6,$22,$2D,$34,$29,$04
	.byte $00,$00,$00,$D6,$21,$29,$20,$C5
	.byte $D6,$1E,$C7,$D6,$A1,$A4,$A1,$A5
	.byte $A1,$B6,$A1,$BF,$A1,$C1,$A3,$C3
	.byte $D6,$A1,$A6,$A1,$A7,$A1,$B7,$A1
	.byte $C0,$A1,$C2,$A3,$C4,$D6,$A1,$A8
	.byte $A1,$A9,$C6,$D6,$A1,$AA,$A1,$AB
	.byte $C6,$D6,$A1,$AC,$A1,$AD,$C6,$D6
	.byte $A1,$AE,$A1,$AF,$C6,$D6,$A1,$B0
	.byte $A1,$B1,$C6,$D6,$A1,$B2,$A1,$B3
	.byte $C6,$D6,$A1,$B4,$A1,$B5,$C6,$D6
	.byte $A1,$A8,$A1,$A9,$C6,$D6,$A1,$B8
	.byte $A1,$B9,$A1,$B6,$A1,$BF,$A1,$C1
	.byte $A3,$C3,$D6,$A1,$BA,$A1,$BB,$A1
	.byte $B7,$A1,$C0,$A1,$C2,$A3,$C4,$D6
	.byte $A1,$BC,$A1,$BD,$A1,$BE,$C5,$DE
	.byte $DE,$DE,$DE,$DE,$DE,$DE,$DE,$DE
	.byte $DE,$DE,$FF
level1_r4:
	.byte 0, 0, 0
	.byte 0, 0
	.byte 0, 0, 0, 0
	.byte 0, 0, 0, 0
	.byte 4
	.word level1_r4_t
	.word level1_r4_p
	.word level1_r4_e
level1:
	.byte $04	; environment type
	.byte $04	; room count
	.word level1_r1
	.word level1_r2
	.word level1_r3
	.word level1_r4
