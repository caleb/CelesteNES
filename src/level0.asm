level0_r1_p:
	.byte $00,$00,$00,$00,$F0,$05,$00,$00
	.byte $FE,$00,$00,$00,$00,$F0,$09,$00
	.byte $00,$00,$00,$00,$00,$90,$82,$88
	.byte $08,$00,$00,$00,$00,$20,$22,$02
	.byte $00,$00,$00,$4C,$00,$00,$44,$44
	.byte $04,$44,$04,$13,$00,$4C,$55,$44
	.byte $05,$50,$85,$00,$00,$00,$11,$11
	.byte $00,$00,$A2,$AA,$00,$50,$55,$55
	.byte $04,$40,$65,$AA,$00,$50,$15,$51
	.byte $05,$55,$00,$00,$00,$00,$04,$00
	.byte $00,$00,$00,$00,$00,$4C,$55,$55
	.byte $05,$00,$00,$00,$00,$13,$11,$10
	.byte $01,$00,$00,$00,$00,$00,$5F,$55
	.byte $04,$FF
level0_r1_e:
	.byte $FF
level0_r1_t:
	.byte $D3,$40,$05,$13,$C8,$D3,$41,$05
	.byte $1A,$C8,$D3,$42,$05,$13,$C8,$D3
	.byte $43,$07,$14,$C8,$D3,$40,$05,$16
	.byte $C8,$D3,$41,$07,$17,$C8,$D3,$42
	.byte $05,$14,$C8,$D3,$43,$07,$1A,$C8
	.byte $D3,$40,$06,$17,$C8,$D3,$41,$05
	.byte $1A,$C8,$D3,$42,$21,$2C,$C8,$D3
	.byte $43,$23,$32,$C8,$D4,$22,$33,$C8
	.byte $D2,$01,$0D,$37,$C9,$D2,$21,$32
	.byte $C6,$2B,$2D,$2E,$31,$D2,$21,$2D
	.byte $00,$00,$2F,$2C,$31,$34,$29,$2A
	.byte $2A,$29,$D2,$23,$2C,$2D,$34,$2A
	.byte $2A,$29,$20,$C4,$D2,$1E,$29,$29
	.byte $20,$C8,$DE,$DE,$DE,$DE,$D8,$01
	.byte $0D,$0E,$03,$00,$00,$C9,$41,$01
	.byte $03,$C9,$01,$0E,$0E,$3B,$13,$13
	.byte $39,$0E,$0E,$C9,$42,$07,$08,$C9
	.byte $05,$13,$1A,$C4,$14,$15,$C9,$43
	.byte $02,$04,$C9,$05,$14,$C7,$0E,$03
	.byte $CF,$41,$01,$0E,$0E,$3B,$C5,$14
	.byte $16,$17,$17,$39,$0E,$0D,$0D,$03
	.byte $CB,$42,$02,$10,$3A,$15,$16,$17
	.byte $18,$19,$38,$0F,$10,$0F,$00,$00
	.byte $19,$13,$38,$04,$CE,$02,$A5,$10
	.byte $04,$00,$00,$00,$00,$00,$00,$15
	.byte $09,$D9,$00,$00,$00,$13,$08,$D9
	.byte $C4,$39,$0B,$1F,$D7,$C5,$2F,$35
	.byte $1F,$1D,$27,$28,$1F,$C7,$1B,$CA
	.byte $C6,$33,$24,$21,$2B,$32,$24,$C7
	.byte $06,$0E,$0D,$0D,$0E,$0D,$0C,$0E
	.byte $03,$00,$00,$C6,$32,$26,$22,$2C
	.byte $33,$25,$C7,$07,$15,$16,$13,$14
	.byte $14,$13,$19,$39,$0E,$0D,$C6,$31
	.byte $25,$23,$30,$2D,$24,$C7,$07,$18
	.byte $C7,$19,$1A,$C6,$30,$24,$21,$2F
	.byte $2E,$26,$C7,$06,$17,$17,$13,$19
	.byte $19,$16,$16,$00,$00,$00,$C5,$19
	.byte $2B,$25,$22,$31,$2E,$25,$C7,$05
	.byte $38,$11,$0F,$11,$0F,$11,$3A,$19
	.byte $1A,$17,$C4,$38,$0F,$10,$10,$1E
	.byte $29,$2A,$20,$C7,$02,$04,$C5,$02
	.byte $0F,$12,$0F,$00,$00,$00,$38,$04
	.byte $D9,$00,$00,$15,$09,$DA,$15,$19
	.byte $38,$04,$DA,$0F,$12,$04,$DB,$D5
	.byte $3E,$C8,$D5,$01,$0E,$03,$C6,$D5
	.byte $05,$13,$39,$0E,$0D,$0E,$0C,$0D
	.byte $0B,$D5,$05,$14,$13,$15,$14,$19
	.byte $18,$17,$15,$D1,$42,$01,$0E,$0E
	.byte $3B,$38,$0F,$10,$12,$3A,$1A,$16
	.byte $14,$D1,$40,$02,$0F,$0F,$0F,$04
	.byte $00,$00,$00,$02,$0F,$10,$0F,$DE
	.byte $DE,$DE,$D5,$41,$1B,$C7,$D5,$43
	.byte $05,$0D,$0E,$0C,$03,$00,$00,$00
	.byte $D5,$42,$05,$17,$15,$17,$39,$0C
	.byte $0B,$0D,$D5,$40,$07,$15,$00,$00
	.byte $13,$14,$15,$16,$FF
level0_r1:
	.byte 1, 0, 12
	.byte 1, 0
	.byte 255, 255, 255, 2
	.byte 255, 255, 255, 254
	.byte 0
	.word level0_r1_t
	.word level0_r1_p
	.word level0_r1_e
level0_r2_p:
	.byte $00,$00,$00,$00,$00,$5F,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$AA,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$99,$55,$00
	.byte $00,$00,$00,$A0,$AA,$AA,$55,$00
	.byte $00,$00,$00,$20,$02,$00,$00,$00
	.byte $00,$00,$00,$00,$A0,$5A,$55,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$A0,$AA,$8A,$58,$44,$00
	.byte $00,$00,$00,$00,$AA,$98,$99,$00
	.byte $00,$00,$00,$00,$00,$80,$00,$00
	.byte $00,$AA,$6A,$A6,$00,$A8,$55,$00
	.byte $00,$00,$00,$00,$A0,$12,$01,$00
	.byte $00,$00,$C0,$44,$44,$44,$44,$00
	.byte $00,$00,$30,$15,$01,$10,$11,$00
	.byte $FF
level0_r2_e:
	.byte $FF
level0_r2_t:
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
	.byte $DE,$DE,$DE,$D8,$3C,$C5,$CD,$1D
	.byte $28,$27,$27,$28,$1F,$C5,$3E,$C5
	.byte $CD,$1E,$29,$2A,$36,$2F,$35,$28
	.byte $27,$28,$27,$28,$03,$C5,$D0,$1E
	.byte $29,$2A,$36,$2B,$2B,$2C,$2B,$39
	.byte $A5,$0E,$D3,$21,$30,$C4,$13,$14
	.byte $15,$16,$17,$D3,$22,$2D,$C9,$D3
	.byte $23,$2B,$2C,$2D,$2E,$2F,$30,$31
	.byte $31,$32,$33,$D3,$1E,$29,$2A,$29
	.byte $2A,$29,$29,$2A,$2A,$29,$2A,$DE
	.byte $DE,$DE,$D8,$1D,$C5,$D8,$21,$C5
	.byte $C7,$1D,$A8,$28,$1F,$C7,$22,$27
	.byte $0E,$0C,$0D,$0B,$C7,$21,$2B,$2C
	.byte $2D,$2E,$38,$0F,$0F,$12,$20,$C6
	.byte $1D,$37,$00,$13,$14,$15,$16,$C7
	.byte $1E,$2A,$29,$29,$2A,$04,$CA,$22
	.byte $00,$00,$38,$10,$0F,$10,$D5,$1D
	.byte $27,$37,$18,$38,$04,$00,$00,$00
	.byte $D5,$22,$29,$29,$10,$04,$C4,$D5
	.byte $1E,$C8,$DE,$DE,$DE,$D4,$01,$0C
	.byte $0D,$03,$C6,$CD,$40,$01,$0D,$0C
	.byte $0C,$0C,$0B,$3B,$13,$15,$39,$0B
	.byte $0C,$0B,$0C,$0D,$0B,$CE,$05,$13
	.byte $14,$15,$13,$15,$C5,$14,$15,$13
	.byte $14,$15,$CD,$42,$06,$14,$CE,$CE
	.byte $05,$13,$CE,$CE,$05,$14,$CE,$FF
level0_r2:
	.byte 1, 0, 12
	.byte 1, 0
	.byte 255, 255, 255, 4
	.byte 255, 255, 255, 248
	.byte 7
	.word level0_r2_t
	.word level0_r2_p
	.word level0_r2_e
level0_r3_p:
	.byte $00,$00,$C0,$05,$00,$00,$00,$00
	.byte $00,$00,$B0,$0A,$00,$00,$00,$00
	.byte $00,$80,$2A,$00,$00,$00,$00,$00
	.byte $44,$A5,$00,$00,$00,$00,$00,$00
	.byte $55,$A5,$00,$00,$00,$00,$00,$05
	.byte $FE,$55,$65,$00,$00,$00,$00,$00
	.byte $01,$00,$13,$05,$00,$00,$00,$00
	.byte $00,$00,$00,$09,$00,$00,$00,$00
	.byte $00,$00,$F0,$06,$00,$00,$00,$00
	.byte $00,$FF
level0_r3_e:
	.byte $FF
level0_r3_t:
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
	.byte $CA,$D2,$07,$14,$CA,$D2,$07,$15
	.byte $CA,$D2,$21,$CB,$D2,$21,$CB,$D2
	.byte $21,$2D,$CA,$D1,$42,$21,$2D,$CA
	.byte $D1,$43,$05,$15,$CA,$D2,$05,$14
	.byte $CA,$FF
level0_r3:
	.byte 0, 0, 0
	.byte 0, 0
	.byte 0, 0, 0, 6
	.byte 0, 0, 0, 252
	.byte 5
	.word level0_r3_t
	.word level0_r3_p
	.word level0_r3_e
level0_r4_p:
	.byte $00,$00,$09,$44,$00,$00,$00,$00
	.byte $00,$00,$AA,$11,$00,$00,$00,$00
	.byte $00,$00,$10,$11,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$40,$44,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$FF
level0_r4_e:
	.byte $FF
level0_r4_t:
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
level0_r4:
	.byte 0, 0, 0
	.byte 0, 0
	.byte 0, 0, 0, 0
	.byte 0, 0, 0, 0
	.byte 4
	.word level0_r4_t
	.word level0_r4_p
	.word level0_r4_e
level0:
	.byte $02	; environment type
	.byte $04	; room count
	.word level0_r1
	.word level0_r2
	.word level0_r3
	.word level0_r4
