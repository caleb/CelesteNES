level0_r1_p:
	.byte $00,$00,$00,$00,$F0,$05,$00,$00
	.byte $FE,$00,$00,$00,$00,$F0,$09,$00
	.byte $00,$00,$00,$00,$00,$90,$82,$88
	.byte $08,$00,$00,$00,$00,$20,$22,$02
	.byte $00,$00,$00,$4C,$00,$00,$44,$44
	.byte $04,$44,$04,$13,$00,$4C,$55,$44
	.byte $05,$50,$85,$00,$00,$00,$11,$11
	.byte $00,$00,$A2,$AA,$AA,$AA,$55,$55
	.byte $04,$40,$65,$AA,$AA,$AA,$15,$51
	.byte $05,$55,$00,$00,$00,$00,$04,$00
	.byte $00,$00,$00,$00,$00,$4C,$55,$55
	.byte $05,$00,$00,$00,$00,$13,$11,$10
	.byte $01,$00,$00,$00,$00,$00,$5F,$55
	.byte $04,$FF
level0_r1_e:
	.byte $FE
	.byte $00,$40,$08
	.byte $FF
level0_r1_t:
	.byte $D3,$40,$05,$13,$C8,$93,$41,$05
	.byte $1A,$88,$93,$42,$05,$13,$88,$93
	.byte $43,$07,$14,$88,$93,$40,$05,$16
	.byte $88,$93,$41,$07,$17,$88,$93,$42
	.byte $05,$14,$88,$93,$43,$07,$1A,$88
	.byte $93,$40,$06,$17,$88,$93,$41,$05
	.byte $1A,$88,$93,$42,$21,$2C,$88,$93
	.byte $43,$23,$32,$88,$93,$00,$22,$33
	.byte $88,$92,$01,$0D,$37,$C9,$92,$21
	.byte $32,$C6,$2B,$2D,$2E,$31,$93,$2D
	.byte $82,$2F,$2C,$31,$34,$29,$2A,$2A
	.byte $29,$92,$23,$2C,$2D,$34,$2A,$2A
	.byte $29,$20,$C4,$92,$1E,$29,$29,$20
	.byte $C8,$92,$CC,$9E,$9E,$9E,$98,$01
	.byte $0D,$0E,$03,$82,$89,$41,$01,$03
	.byte $89,$01,$0E,$0E,$3B,$13,$13,$39
	.byte $0E,$0E,$89,$42,$07,$08,$89,$05
	.byte $13,$1A,$C4,$14,$15,$89,$43,$02
	.byte $04,$8A,$14,$C7,$0E,$03,$87,$C8
	.byte $41,$01,$0E,$0E,$3B,$C5,$14,$16
	.byte $17,$17,$39,$0E,$0D,$0D,$03,$8B
	.byte $42,$02,$10,$3A,$15,$16,$17,$18
	.byte $19,$38,$0F,$10,$0F,$00,$00,$19
	.byte $13,$38,$04,$8B,$00,$00,$00,$02
	.byte $A5,$10,$04,$00,$00,$00,$82,$00
	.byte $15,$09,$D9,$83,$13,$08,$99,$83
	.byte $00,$39,$0B,$1F,$97,$84,$00,$2F
	.byte $35,$1F,$1D,$27,$28,$1F,$A7,$C5
	.byte $1D,$8A,$85,$00,$33,$24,$21,$2C
	.byte $2D,$24,$87,$21,$0E,$0D,$0D,$0E
	.byte $0D,$0C,$0E,$03,$82,$86,$32,$26
	.byte $23,$2E,$2F,$26,$87,$23,$15,$16
	.byte $13,$14,$14,$13,$19,$39,$0E,$0D
	.byte $86,$31,$25,$22,$2B,$2E,$25,$87
	.byte $22,$18,$C7,$19,$1A,$86,$30,$24
	.byte $82,$31,$24,$87,$21,$17,$17,$13
	.byte $19,$19,$16,$16,$00,$00,$00,$85
	.byte $19,$2B,$25,$21,$2C,$2E,$26,$87
	.byte $22,$38,$11,$0F,$11,$0F,$11,$3A
	.byte $19,$1A,$17,$84,$38,$0F,$10,$10
	.byte $1E,$29,$2A,$20,$87,$1E,$04,$C5
	.byte $02,$0F,$12,$0F,$83,$38,$04,$D9
	.byte $82,$15,$09,$DA,$15,$19,$38,$04
	.byte $9A,$0F,$12,$04,$DB,$D5,$3E,$88
	.byte $95,$01,$0E,$03,$86,$95,$05,$13
	.byte $39,$0E,$0D,$0E,$0C,$0D,$0B,$96
	.byte $14,$13,$15,$14,$19,$18,$17,$15
	.byte $91,$42,$01,$0E,$0E,$3B,$38,$0F
	.byte $10,$12,$3A,$1A,$16,$14,$91,$40
	.byte $02,$0F,$0F,$0F,$04,$00,$00,$00
	.byte $02,$0F,$10,$0F,$91,$CD,$9E,$9E
	.byte $95,$41,$1B,$87,$95,$43,$05,$0D
	.byte $0E,$0C,$03,$83,$95,$42,$05,$17
	.byte $15,$17,$39,$0C,$0B,$0D,$95,$40
	.byte $07,$15,$00,$00,$13,$14,$15,$16
	.byte $FF
level0_r1:
	.byte 56, 0
	.byte 255, 255, 255, 1
	.byte 0, 0, 0, 254
	.byte 0
	.byte 255
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
	.byte $80,$70,$0C
	.byte $FF
level0_r2_t:
	.byte $D8,$05,$13,$C4,$97,$43,$05,$14
	.byte $84,$97,$42,$05,$15,$84,$97,$41
	.byte $05,$16,$84,$97,$00,$23,$2B,$82
	.byte $2B,$2C,$98,$21,$2B,$2C,$2B,$34
	.byte $29,$98,$23,$29,$29,$29,$20,$00
	.byte $98,$1E,$C5,$98,$C6,$9E,$9E,$9E
	.byte $97,$1B,$86,$97,$05,$0D,$0E,$0E
	.byte $0E,$03,$00,$97,$21,$2D,$00,$13
	.byte $15,$39,$0E,$97,$23,$2B,$00,$00
	.byte $00,$16,$17,$90,$1D,$28,$27,$27
	.byte $27,$28,$28,$37,$32,$83,$00,$17
	.byte $90,$21,$A6,$2B,$32,$00,$00,$13
	.byte $15,$16,$10,$91,$2F,$00,$00,$2F
	.byte $2D,$2C,$2C,$2B,$34,$38,$10,$10
	.byte $00,$91,$2B,$2B,$34,$29,$2A,$29
	.byte $29,$2A,$20,$C4,$90,$1E,$2A,$2A
	.byte $20,$CA,$90,$CE,$9E,$9E,$94,$1D
	.byte $1F,$88,$94,$23,$35,$28,$27,$0C
	.byte $0D,$0B,$0C,$0B,$0D,$94,$22,$2E
	.byte $34,$29,$11,$12,$10,$3A,$13,$14
	.byte $94,$1E,$29,$20,$C4,$02,$12,$11
	.byte $94,$CA,$9E,$9E,$9E,$98,$3C,$85
	.byte $8D,$1D,$28,$27,$27,$28,$1F,$85
	.byte $3E,$85,$8D,$1E,$29,$2A,$36,$2F
	.byte $35,$28,$27,$28,$27,$28,$03,$85
	.byte $8D,$00,$00,$00,$1E,$29,$2A,$36
	.byte $2B,$2B,$2C,$2B,$39,$A5,$0E,$90
	.byte $00,$00,$00,$21,$30,$C4,$13,$14
	.byte $15,$16,$17,$93,$22,$2D,$84,$C5
	.byte $93,$23,$2B,$2C,$2D,$2E,$2F,$30
	.byte $31,$31,$32,$33,$93,$1E,$29,$2A
	.byte $29,$2A,$29,$29,$2A,$2A,$29,$2A
	.byte $93,$CB,$9E,$9E,$98,$1D,$85,$98
	.byte $21,$85,$87,$1D,$A8,$28,$1F,$87
	.byte $22,$27,$0E,$0C,$0D,$0B,$87,$21
	.byte $2B,$2C,$2D,$2E,$38,$0F,$0F,$12
	.byte $20,$86,$1D,$37,$00,$13,$14,$15
	.byte $16,$87,$1E,$2A,$29,$29,$2A,$04
	.byte $CA,$22,$00,$00,$38,$10,$0F,$10
	.byte $87,$CE,$1D,$27,$37,$18,$38,$04
	.byte $00,$00,$00,$95,$22,$29,$29,$10
	.byte $04,$C4,$95,$1E,$C8,$95,$C9,$9E
	.byte $9E,$94,$01,$0C,$0D,$03,$86,$8D
	.byte $40,$01,$0D,$0C,$0C,$0C,$0B,$3B
	.byte $13,$15,$39,$0B,$0C,$0B,$0C,$0D
	.byte $0B,$8D,$00,$05,$13,$14,$15,$13
	.byte $15,$C5,$14,$15,$13,$14,$15,$8D
	.byte $42,$06,$14,$CE,$8D,$00,$05,$13
	.byte $8E,$8F,$14,$8E,$FF
level0_r2:
	.byte 60, 0
	.byte 255, 255, 2, 3
	.byte 0, 0, 2, 248
	.byte 7
	.byte 255
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
	.byte $B8,$70,$0B
	.byte $FF
level0_r3_t:
	.byte $D6,$05,$19,$C6,$97,$18,$86,$97
	.byte $1A,$86,$95,$40,$05,$16,$86,$95
	.byte $41,$21,$32,$86,$95,$00,$21,$33
	.byte $86,$97,$2F,$86,$95,$1D,$37,$30
	.byte $86,$93,$1D,$28,$37,$C8,$93,$21
	.byte $2C,$C9,$90,$1D,$28,$28,$37,$CA
	.byte $90,$21,$2B,$32,$CB,$8E,$E4,$84
	.byte $93,$21,$2C,$CC,$8E,$E4,$85,$94
	.byte $21,$2B,$8C,$8A,$E8,$51,$5D,$6A
	.byte $77,$86,$95,$21,$2D,$8C,$8A,$E8
	.byte $52,$5E,$6B,$78,$87,$96,$21,$2C
	.byte $8C,$89,$E9,$49,$53,$5F,$6C,$79
	.byte $88,$97,$21,$2E,$8C,$89,$E9,$4A
	.byte $54,$60,$6D,$7A,$89,$98,$21,$2B
	.byte $8C,$88,$EA,$44,$4B,$55,$61,$6E
	.byte $7B,$8A,$99,$21,$2F,$8C,$88,$EA
	.byte $45,$4C,$56,$62,$6F,$7C,$8B,$9A
	.byte $21,$30,$8C,$88,$EA,$46,$4D,$57
	.byte $63,$70,$7D,$8C,$9B,$21,$2F,$8C
	.byte $88,$EA,$47,$4E,$58,$64,$71,$7E
	.byte $8D,$9C,$21,$2B,$8C,$88,$EA,$48
	.byte $A3,$59,$65,$72,$7F,$8E,$9D,$21
	.byte $2F,$8C,$88,$EA,$00,$4F,$5A,$66
	.byte $73,$80,$8F,$9E,$21,$2D,$8C,$89
	.byte $E8,$50,$5B,$67,$74,$81,$90,$9F
	.byte $21,$CD,$89,$E7,$00,$A2,$68,$75
	.byte $82,$91,$A0,$8E,$8A,$E7,$5C,$69
	.byte $76,$83,$92,$A1,$05,$8D,$8A,$C6
	.byte $05,$14,$8C,$8F,$40,$05,$15,$8C
	.byte $8F,$41,$02,$11,$3A,$8B,$8F,$00
	.byte $00,$00,$05,$8B,$93,$13,$8A,$92
	.byte $07,$14,$8A,$93,$15,$8A,$92,$21
	.byte $CB,$9E,$93,$2D,$8A,$91,$42,$8C
	.byte $91,$43,$05,$15,$8A,$91,$00,$05
	.byte $14,$8A,$FF
level0_r3:
	.byte 40, 0
	.byte 255, 255, 4, 5
	.byte 0, 0, 8, 252
	.byte 5
	.byte 0, 0, 64, 0
	.byte 0, 0, 255, 0
	.byte 0, 0, 0, 0
	.word level0_r3_t
	.word level0_r3_p
	.word level0_r3_e
level0_r4_p:
	.byte $00,$00,$09,$44,$00,$00,$00,$00
	.byte $00,$00,$AA,$11,$00,$00,$00,$00
	.byte $00,$00,$10,$11,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$40,$44,$00,$00,$00,$00
	.byte $00,$00,$40,$55,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$40,$44,$00,$00,$00,$00
	.byte $00,$00,$40,$55,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$10,$55,$00,$00,$00
	.byte $00,$00,$00,$10,$11,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$10,$55,$00,$00,$00
	.byte $00,$00,$00,$10,$11,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$40,$44,$00,$00,$00
	.byte $00,$00,$00,$40,$55,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$40,$44,$00,$00,$00
	.byte $00,$00,$00,$40,$55,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FE,$00,$00,$10,$55,$00,$00
	.byte $00,$00,$00,$00,$10,$11,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$10,$55,$00,$00
	.byte $00,$00,$00,$C0,$54,$11,$00,$00
	.byte $00,$00,$00,$F0,$16,$45,$00,$00
	.byte $00,$00,$4C,$54,$01,$00,$00,$00
	.byte $00,$00,$FF
level0_r4_e:
	.byte $40,$B0,$0A
	.byte $A8,$B0,$0A
	.byte $FE
	.byte $10,$B0,$0A
	.byte $78,$B0,$0A
	.byte $E0,$B0,$0A
	.byte $FE
	.byte $48,$B0,$0A
	.byte $B0,$B0,$0A
	.byte $FE
	.byte $18,$B0,$0A
	.byte $90,$A0,$0D
	.byte $FF
level0_r4_t:
	.byte $D6,$06,$13,$C6,$96,$05,$14,$86
	.byte $96,$23,$C7,$96,$22,$84,$16,$15
	.byte $14,$96,$21,$2D,$82,$38,$0F,$10
	.byte $12,$96,$22,$2D,$34,$29,$04,$00
	.byte $00,$00,$96,$21,$29,$20,$C5,$96
	.byte $1E,$C7,$96,$E5,$A4,$A5,$B6,$BF
	.byte $C1,$A3,$C3,$96,$E5,$A6,$A7,$B7
	.byte $C0,$C2,$A3,$C4,$96,$E2,$A8,$A9
	.byte $C6,$96,$E2,$AA,$AB,$86,$96,$E2
	.byte $AC,$AD,$86,$96,$E2,$AE,$AF,$86
	.byte $96,$E2,$B0,$B1,$86,$96,$E2,$B2
	.byte $B3,$86,$96,$E2,$B4,$B5,$86,$96
	.byte $E2,$A8,$A9,$86,$96,$E5,$B8,$B9
	.byte $B6,$BF,$C1,$A3,$C3,$96,$E5,$BA
	.byte $BB,$B7,$C0,$C2,$A3,$C4,$96,$E3
	.byte $BC,$BD,$BE,$C5,$96,$E5,$A4,$A5
	.byte $C6,$C8,$C1,$A3,$C3,$96,$E5,$A6
	.byte $A7,$B7,$C0,$C2,$A3,$C4,$96,$E2
	.byte $A8,$A9,$C6,$96,$E2,$AA,$AB,$86
	.byte $96,$E2,$AC,$AD,$86,$96,$E2,$AE
	.byte $AF,$86,$96,$E2,$B0,$B1,$86,$96
	.byte $E2,$B2,$B3,$86,$96,$E2,$B4,$B5
	.byte $86,$96,$E2,$A8,$A9,$86,$96,$E5
	.byte $B8,$B9,$B6,$BF,$C1,$A3,$C3,$96
	.byte $E5,$BA,$BB,$C7,$C9,$C2,$A3,$C4
	.byte $96,$E3,$BC,$BD,$BE,$C5,$96,$E5
	.byte $A4,$A5,$B6,$BF,$C1,$A3,$C3,$96
	.byte $E5,$A6,$A7,$B7,$C0,$C2,$A3,$C4
	.byte $96,$E2,$A8,$A9,$C6,$96,$E2,$AA
	.byte $AB,$86,$96,$E2,$AC,$AD,$86,$96
	.byte $E2,$AE,$AF,$86,$96,$E2,$B0,$B1
	.byte $86,$96,$E2,$B2,$B3,$86,$96,$E2
	.byte $B4,$B5,$86,$96,$E2,$A8,$A9,$86
	.byte $96,$E5,$B8,$B9,$B6,$BF,$C1,$A3
	.byte $C3,$96,$E5,$BA,$BB,$B7,$C0,$C2
	.byte $A3,$C4,$96,$E3,$BC,$BD,$BE,$C5
	.byte $96,$E5,$A4,$A5,$C6,$C8,$C1,$A3
	.byte $C3,$96,$E5,$A6,$A7,$B7,$C0,$C2
	.byte $A3,$C4,$96,$E2,$A8,$A9,$C6,$96
	.byte $E2,$AA,$AB,$86,$96,$E2,$AC,$AD
	.byte $86,$96,$E2,$AE,$AF,$86,$96,$E2
	.byte $B0,$B1,$86,$96,$E2,$B2,$B3,$86
	.byte $96,$E2,$B4,$B5,$86,$96,$E2,$A8
	.byte $A9,$86,$96,$E5,$B8,$B9,$B6,$BF
	.byte $C1,$A3,$C3,$96,$E5,$BA,$BB,$C7
	.byte $C9,$C2,$A3,$C4,$96,$E3,$BC,$BD
	.byte $BE,$C5,$96,$E5,$A4,$A5,$B6,$BF
	.byte $C1,$A3,$C3,$96,$E5,$A6,$A7,$B7
	.byte $C0,$C2,$A3,$C4,$96,$C8,$9E,$9E
	.byte $9E,$96,$E2,$B0,$B1,$86,$96,$E2
	.byte $B2,$B3,$86,$96,$E2,$B4,$B5,$86
	.byte $96,$E2,$A8,$A9,$86,$96,$E5,$B8
	.byte $B9,$B6,$BF,$C1,$A3,$C3,$96,$E5
	.byte $BA,$BB,$B7,$C0,$C2,$A3,$C4,$96
	.byte $E3,$BC,$BD,$BE,$C5,$96,$E5,$A4
	.byte $A5,$C6,$C8,$C1,$A3,$C3,$96,$E5
	.byte $A6,$A7,$B7,$C0,$C2,$A3,$C4,$96
	.byte $E2,$A8,$A9,$C6,$96,$E2,$AA,$AB
	.byte $86,$96,$E2,$AC,$AD,$86,$96,$E2
	.byte $AE,$AF,$86,$96,$E2,$B0,$B1,$86
	.byte $96,$E2,$B2,$B3,$86,$96,$E2,$B4
	.byte $B5,$86,$96,$E2,$A8,$A9,$86,$96
	.byte $E5,$B8,$B9,$B6,$BF,$C1,$A3,$C3
	.byte $96,$E5,$BA,$BB,$C7,$C9,$C2,$A3
	.byte $C4,$96,$E3,$BC,$BD,$BE,$C5,$96
	.byte $E5,$A4,$A5,$B6,$BF,$C1,$A3,$C3
	.byte $96,$E5,$A6,$A7,$B7,$C0,$C2,$A3
	.byte $C4,$96,$E2,$A8,$A9,$C6,$96,$E2
	.byte $AA,$AB,$86,$96,$E2,$AC,$AD,$86
	.byte $96,$E2,$AE,$AF,$86,$96,$E2,$B0
	.byte $B1,$86,$96,$E2,$B2,$B3,$86,$96
	.byte $E2,$B4,$B5,$86,$96,$E2,$A8,$A9
	.byte $86,$96,$E5,$B8,$B9,$B6,$BF,$C1
	.byte $A3,$C3,$96,$E5,$BA,$BB,$B7,$C0
	.byte $C2,$A3,$C4,$96,$E3,$BC,$BD,$BE
	.byte $C5,$96,$E5,$A4,$A5,$C6,$C8,$C1
	.byte $A3,$C3,$96,$E5,$A6,$A7,$B7,$C0
	.byte $C2,$A3,$C4,$96,$E2,$A8,$A9,$C6
	.byte $96,$E2,$AA,$AB,$86,$96,$E2,$AC
	.byte $AD,$86,$96,$E2,$AE,$AF,$86,$96
	.byte $E2,$B0,$B1,$86,$96,$E2,$B2,$B3
	.byte $86,$96,$E2,$B4,$B5,$86,$96,$E2
	.byte $A8,$A9,$86,$96,$E5,$B8,$B9,$B6
	.byte $BF,$C1,$A3,$C3,$96,$E5,$BA,$BB
	.byte $C7,$C9,$C2,$A3,$C4,$96,$E3,$BC
	.byte $BD,$BE,$C5,$96,$E5,$A4,$A5,$B6
	.byte $BF,$C1,$A3,$C3,$96,$E5,$CA,$CB
	.byte $0B,$03,$C2,$A3,$C4,$95,$42,$07
	.byte $17,$16,$09,$C4,$95,$40,$07,$13
	.byte $15,$85,$95,$41,$21,$2B,$00,$39
	.byte $03,$83,$95,$43,$23,$2C,$00,$14
	.byte $08,$83,$95,$00,$06,$15,$00,$00
	.byte $39,$0E,$0B,$0E,$95,$43,$06,$17
	.byte $82,$00,$19,$14,$16,$95,$00,$06
	.byte $13,$83,$00,$00,$00,$95,$01,$3B
	.byte $C7,$93,$01,$0D,$3B,$C8,$8F,$43
	.byte $01,$0C,$0B,$3B,$16,$C9,$FF
level0_r4:
	.byte 0, 0
	.byte 255, 255, 6, 255
	.byte 0, 0, 4, 0
	.byte 4
	.byte 255
	.word level0_r4_t
	.word level0_r4_p
	.word level0_r4_e
