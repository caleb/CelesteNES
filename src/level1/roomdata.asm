level1_r1_p:
	.byte $00,$1A,$11,$00,$00,$80,$04,$00
	.byte $00,$08,$00,$00,$00,$13,$00,$00
	.byte $A0,$0A,$00,$00,$C0,$44,$04,$00
	.byte $20,$56,$05,$00,$00,$A1,$0A,$00
	.byte $00,$11,$00,$00,$00,$A8,$02,$00
	.byte $00,$04,$00,$00,$20,$0A,$00,$00
	.byte $00,$01,$00,$00,$00,$12,$45,$04
	.byte $00,$00,$80,$08,$00,$00,$11,$01
	.byte $00,$80,$A8,$8A,$00,$00,$00,$00
	.byte $00,$20,$22,$20,$12,$45,$44,$04
	.byte $FF
level1_r1_e:
	.byte $FF
level1_r1_t:
	.byte $C5,$2C,$15,$16,$15,$14,$13,$14
	.byte $64,$A9,$65,$64,$C7,$85,$34,$11
	.byte $11,$12,$10,$0F,$0F,$47,$C9,$4C
	.byte $5A,$86,$84,$2C,$24,$D0,$23,$2C
	.byte $86,$84,$2B,$92,$2D,$19,$85,$84
	.byte $64,$A5,$65,$64,$8A,$41,$02,$11
	.byte $54,$62,$84,$84,$66,$00,$00,$67
	.byte $00,$00,$66,$8A,$00,$00,$00,$3F
	.byte $4C,$84,$84,$35,$1F,$00,$64,$96
	.byte $84,$2F,$26,$C4,$67,$93,$84,$34
	.byte $29,$A4,$65,$64,$93,$83,$2B,$24
	.byte $D3,$86,$83,$2C,$26,$8F,$01,$0B
	.byte $0C,$0D,$0C,$3B,$84,$83,$2D,$25
	.byte $8E,$40,$06,$18,$18,$18,$14,$C5
	.byte $83,$2E,$24,$8E,$00,$02,$0F,$2A
	.byte $36,$C6,$83,$00,$35,$27,$0B,$0C
	.byte $0D,$03,$8A,$00,$00,$A1,$90,$21
	.byte $2B,$85,$84,$00,$00,$13,$14,$13
	.byte $08,$8D,$22,$2C,$85,$85,$14,$38
	.byte $10,$0F,$04,$8D,$23,$2D,$85,$85
	.byte $13,$09,$CF,$A1,$90,$22,$2E,$85
	.byte $85,$38,$04,$90,$21,$2F,$85,$85
	.byte $64,$C8,$64,$A4,$65,$52,$28,$27
	.byte $28,$37,$C6,$85,$66,$88,$66,$00
	.byte $00,$66,$00,$4E,$2B,$2C,$C8,$92
	.byte $27,$37,$CA,$84,$64,$65,$65,$64
	.byte $86,$64,$65,$65,$65,$2A,$2A,$36
	.byte $89,$84,$08,$CE,$3F,$21,$2B,$88
	.byte $84,$09,$8F,$22,$2D,$88,$84,$0A
	.byte $8F,$23,$2E,$14,$13,$86,$84,$08
	.byte $8F,$1E,$29,$10,$10,$3A,$85,$83
	.byte $5C,$4F,$8E,$C4,$3F,$07,$15,$84
	.byte $83,$5D,$94,$06,$13,$15,$16,$17
	.byte $18,$83,$5E,$50,$93,$02,$10,$12
	.byte $10,$11,$12,$5A,$59,$5A,$5F,$51
	.byte $92,$C7,$54,$54,$55,$54,$47,$99
	.byte $CB,$1D,$28,$1F,$90,$8B,$21,$2B
	.byte $24,$90,$8B,$22,$2C,$25,$6A,$6A
	.byte $8E,$87,$1D,$1F,$82,$23,$2D,$35
	.byte $27,$1F,$8E,$86,$1D,$37,$35,$28
	.byte $27,$37,$00,$00,$2E,$25,$8E,$53
	.byte $52,$53,$52,$53,$53,$37,$00,$00
	.byte $2D,$2E,$C4,$35,$27,$28,$0B,$03
	.byte $8A,$59,$5B,$5A,$5E,$59,$5F,$CA
	.byte $31,$2C,$13,$39,$0E,$03,$88,$D4
	.byte $13,$39,$03,$87,$94,$00,$13,$39
	.byte $0B,$0C,$0B,$0D,$0C,$0B,$0C,$FF
level1_r1:
	.byte 40, 0, 0
	.byte 16, 160
	.byte 2, 255, 255, 255
	.byte 20, 0, 0, 0
	.byte 0
	.word level1_r1_t
	.word level1_r1_p
	.word level1_r1_e
level1_r2_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$00,$00,$00,$80,$08
	.byte $00,$00,$00,$00,$00,$00,$20,$22
	.byte $02,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$80,$88,$00,$80,$88,$00
	.byte $00,$00,$A2,$2A,$00,$A0,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$80,$0A,$00
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $00,$00,$00,$00,$22,$22,$00,$00
	.byte $00,$FF
level1_r2_e:
	.byte $68,$38,$01
	.byte $80,$98,$03
	.byte $FF
level1_r2_t:
	.byte $DE,$8F,$5B,$5C,$5E,$5F,$5D,$5D
	.byte $5A,$5F,$5A,$59,$5A,$5C,$5D,$5B
	.byte $5C,$8B,$5E,$57,$5F,$60,$54,$55
	.byte $54,$55,$55,$55,$A4,$54,$55,$55
	.byte $55,$54,$55,$85,$5A,$5F,$5E,$5D
	.byte $5C,$60,$54,$55,$55,$47,$C8,$6C
	.byte $C6,$84,$60,$65,$64,$65,$64,$65
	.byte $66,$CC,$6B,$86,$83,$5F,$51,$00
	.byte $66,$00,$66,$00,$94,$83,$5E,$50
	.byte $99,$83,$60,$4B,$92,$6D,$86,$82
	.byte $5C,$51,$00,$00,$91,$44,$52,$52
	.byte $53,$53,$53,$52,$82,$5D,$50,$93
	.byte $4C,$59,$5A,$5F,$5C,$5D,$5E,$82
	.byte $00,$61,$65,$65,$64,$65,$65,$65
	.byte $64,$8C,$22,$2C,$C5,$83,$60,$55
	.byte $55,$47,$D0,$21,$2D,$85,$83,$4F
	.byte $D3,$21,$2E,$2B,$2C,$2E,$2F,$30
	.byte $83,$50,$93,$22,$29,$2A,$29,$29
	.byte $2A,$2A,$83,$51,$93,$66,$C6,$83
	.byte $50,$9A,$83,$64,$65,$65,$65,$64
	.byte $8D,$64,$65,$64,$A6,$65,$83,$4F
	.byte $D1,$82,$A7,$65,$83,$61,$46,$90
	.byte $C9,$83,$5A,$4F,$99,$83,$5B,$50
	.byte $99,$83,$5C,$51,$99,$83,$00,$00
	.byte $53,$28,$1F,$88,$3F,$44,$28,$1F
	.byte $8A,$85,$00,$2C,$35,$28,$28,$27
	.byte $1F,$85,$4C,$2B,$35,$28,$28,$27
	.byte $27,$52,$52,$53,$53,$53,$52,$86
	.byte $00,$00,$2B,$33,$32,$26,$85,$4E
	.byte $2C,$2B,$00,$56,$5F,$5B,$5A,$57
	.byte $58,$59,$5A,$5B,$85,$2E,$2D,$31
	.byte $34,$29,$29,$20,$86,$34,$2A,$54
	.byte $54,$54,$62,$C6,$84,$60,$54,$2A
	.byte $2A,$20,$C7,$3F,$45,$20,$00,$00
	.byte $00,$3F,$4C,$5C,$85,$83,$56,$4F
	.byte $D1,$3F,$4D,$62,$85,$83,$5F,$50
	.byte $91,$00,$3F,$4D,$5D,$84,$83,$00
	.byte $61,$46,$92,$4C,$5E,$84,$84,$00
	.byte $51,$8F,$44,$53,$53,$63,$C5,$85
	.byte $61,$52,$53,$46,$8C,$4C,$5C,$5F
	.byte $C6,$85,$00,$00,$5C,$50,$8C,$22
	.byte $5B,$C7,$87,$59,$4F,$8C,$23,$5A
	.byte $87,$5B,$5E,$5D,$5C,$5F,$5E,$5E
	.byte $5E,$61,$52,$53,$52,$46,$85,$1D
	.byte $27,$28,$37,$C8,$AE,$65,$64,$83
	.byte $21,$2C,$2D,$C9,$D2,$23,$2E,$CA
	.byte $93,$30,$8A,$92,$22,$31,$8A,$92
	.byte $21,$32,$8A,$52,$52,$A4,$53,$52
	.byte $53,$53,$53,$52,$52,$28,$28,$27
	.byte $27,$28,$28,$37,$CB,$00,$00,$00
	.byte $58,$59,$5A,$5C,$5E,$5D,$5F,$5E
	.byte $5A,$2C,$2D,$2E,$2F,$30,$31,$CC
	.byte $83,$DB,$9E,$FF
level1_r2:
	.byte 44, 0, 0
	.byte 32, 168
	.byte 4, 255, 255, 255
	.byte 20, 255, 255, 255
	.byte 0
	.word level1_r2_t
	.word level1_r2_p
	.word level1_r2_e
level1_r3_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$05,$00
	.byte $00,$00,$80,$08,$00,$00,$00,$00
	.byte $00,$00,$20,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$22,$22,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$08,$00,$00,$00,$00,$00,$00
	.byte $00,$02,$A0,$AA,$0A,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $22,$22,$22,$A2,$AA,$08,$00,$00
	.byte $FF
level1_r3_e:
	.byte $FE
	.byte $28,$90,$01
	.byte $FF
level1_r3_t:
	.byte $DE,$89,$58,$57,$56,$57,$58,$59
	.byte $5A,$5B,$5C,$5D,$5E,$5F,$5E,$88
	.byte $87,$5A,$60,$AD,$65,$64,$5D,$5C
	.byte $5B,$5E,$5F,$5A,$5D,$86,$60,$54
	.byte $4B,$CD,$64,$A7,$65,$85,$5C,$4F
	.byte $D1,$3D,$C5,$85,$5D,$50,$91,$3C
	.byte $85,$85,$5E,$51,$97,$84,$64,$65
	.byte $64,$91,$3E,$85,$84,$4F,$D3,$44
	.byte $53,$53,$52,$53,$52,$83,$5E,$50
	.byte $93,$4D,$56,$5C,$5D,$5E,$5F,$83
	.byte $5D,$51,$93,$45,$54,$55,$54,$55
	.byte $54,$83,$5C,$87,$1D,$1F,$8B,$C6
	.byte $83,$5B,$50,$86,$22,$4F,$91,$83
	.byte $5A,$4F,$86,$1E,$65,$65,$65,$64
	.byte $8E,$83,$59,$50,$86,$D3,$83,$5C
	.byte $9A,$83,$5F,$51,$99,$83,$00,$61
	.byte $52,$46,$97,$84,$00,$60,$47,$88
	.byte $64,$65,$65,$65,$64,$8A,$84,$5F
	.byte $51,$CB,$4D,$56,$4F,$8A,$84,$5C
	.byte $4F,$8B,$21,$31,$35,$28,$1F,$88
	.byte $84,$5B,$50,$8B,$1E,$29,$2A,$29
	.byte $29,$20,$87,$84,$5C,$51,$8B,$CD
	.byte $84,$5E,$50,$98,$84,$56,$4F,$98
	.byte $84,$59,$51,$90,$3F,$64,$A6,$65
	.byte $84,$56,$50,$91,$4C,$56,$5E,$5F
	.byte $5C,$5E,$5F,$84,$57,$92,$4D,$5D
	.byte $C5,$84,$64,$65,$65,$64,$8B,$3F
	.byte $48,$53,$52,$63,$C6,$84,$50,$CE
	.byte $3F,$4D,$5A,$59,$C7,$84,$26,$8F
	.byte $45,$62,$C8,$93,$00,$3F,$4C,$5F
	.byte $87,$95,$4D,$58,$87,$84,$35,$1F
	.byte $85,$1D,$A4,$28,$1F,$84,$4C,$56
	.byte $87,$A6,$65,$64,$85,$2B,$34,$29
	.byte $29,$29,$20,$83,$4E,$5A,$87,$CB
	.byte $1E,$29,$20,$C6,$3F,$45,$54,$62
	.byte $86,$8B,$CB,$3F,$4D,$5E,$85,$97
	.byte $4C,$5F,$85,$9E,$A9,$65,$64,$8D
	.byte $4D,$5A,$85,$2B,$2C,$2D,$30,$2F
	.byte $31,$32,$33,$32,$35,$A4,$28,$1F
	.byte $86,$3F,$44,$63,$C6,$CA,$33,$32
	.byte $31,$2E,$35,$A5,$28,$52,$52,$63
	.byte $5C,$86,$8A,$C5,$2D,$2E,$31,$30
	.byte $32,$32,$32,$5F,$C7,$8F,$CF,$FF
level1_r3:
	.byte 44, 0, 0
	.byte 40, 176
	.byte 6, 255, 255, 255
	.byte 20, 0, 0, 0
	.byte 0
	.word level1_r3_t
	.word level1_r3_p
	.word level1_r3_e
level1_r4_p:
	.byte $00,$80,$AA,$AA,$22,$22,$22,$02
	.byte $00,$2A,$00,$00,$00,$00,$00,$00
	.byte $00,$0A,$00,$04,$40,$A0,$AA,$0A
	.byte $A0,$0A,$00,$00,$00,$00,$00,$00
	.byte $A0,$8A,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $88,$08,$00,$00,$00,$00,$00,$00
	.byte $00,$AA,$0A,$00,$00,$00,$00,$00
	.byte $80,$0A,$00,$00,$00,$00,$00,$00
	.byte $00,$A2,$88,$88,$88,$88,$88,$08
	.byte $FF
level1_r4_e:
	.byte $70,$68,$0E,$18,$23,$FC
	.byte $FF
level1_r4_t:
	.byte $D1,$2E,$2D,$2F,$32,$C9,$88,$2D
	.byte $2E,$31,$31,$2C,$2E,$30,$32,$34
	.byte $2A,$2A,$29,$29,$36,$33,$2F,$2D
	.byte $2F,$30,$32,$32,$2D,$87,$34,$2A
	.byte $A4,$29,$2A,$2A,$29,$4B,$A4,$68
	.byte $64,$A8,$65,$86,$2B,$25,$CF,$6C
	.byte $C6,$86,$34,$20,$8F,$6B,$86,$85
	.byte $34,$20,$D0,$87,$84,$32,$25,$D1
	.byte $6D,$86,$84,$2D,$92,$64,$A6,$65
	.byte $84,$30,$26,$86,$64,$65,$64,$A4
	.byte $6A,$84,$21,$2D,$2D,$30,$2E,$33
	.byte $32,$84,$31,$25,$88,$A4,$65,$64
	.byte $84,$23,$2E,$2E,$2B,$2E,$2E,$2E
	.byte $84,$32,$24,$86,$3D,$00,$00,$00
	.byte $3F,$64,$04,$84,$1E,$2A,$29,$2A
	.byte $29,$29,$2A,$84,$34,$20,$86,$3C
	.byte $85,$CC,$83,$32,$25,$D9,$83,$33
	.byte $26,$99,$83,$2F,$25,$99,$83,$32
	.byte $24,$99,$83,$2F,$26,$99,$83,$33
	.byte $24,$99,$83,$00,$35,$27,$27,$1F
	.byte $96,$83,$2B,$2B,$2B,$32,$25,$96
	.byte $A9,$65,$64,$94,$DE,$9E,$9E,$9E
	.byte $A5,$65,$64,$98,$27,$28,$27,$28
	.byte $28,$1F,$98,$2E,$2C,$2E,$2B,$2D
	.byte $35,$46,$A4,$6A,$93,$C5,$2E,$35
	.byte $28,$28,$27,$46,$93,$85,$00,$00
	.byte $2D,$2B,$34,$A4,$65,$64,$8F,$86
	.byte $30,$31,$2B,$24,$D4,$85,$34,$29
	.byte $2A,$29,$20,$94,$84,$30,$25,$D8
	.byte $84,$2C,$99,$84,$34,$20,$98,$83
	.byte $2E,$24,$D9,$83,$00,$35,$27,$28
	.byte $1F,$96,$84,$00,$2C,$32,$26,$96
	.byte $85,$00,$00,$35,$27,$27,$27,$28
	.byte $28,$27,$28,$1F,$8E,$87,$00,$2E
	.byte $2F,$32,$33,$30,$2C,$32,$35,$27
	.byte $28,$A7,$27,$28,$28,$27,$28,$27
	.byte $FF
level1_r4:
	.byte 40, 0, 0
	.byte 32, 168
	.byte 8, 255, 255, 8
	.byte 8, 0, 0, 0
	.byte 0
	.word level1_r4_t
	.word level1_r4_p
	.word level1_r4_e
level1_r5_p:
	.byte $80,$A8,$AA,$2A,$22,$A2,$88,$08
	.byte $AA,$02,$00,$00,$00,$00,$00,$00
	.byte $0A,$00,$00,$00,$00,$80,$88,$08
	.byte $0A,$00,$00,$00,$00,$20,$00,$00
	.byte $0A,$00,$08,$00,$00,$80,$00,$00
	.byte $AA,$00,$AA,$0A,$00,$A0,$00,$00
	.byte $88,$20,$22,$22,$02,$A0,$AA,$0A
	.byte $AA,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$A2,$08,$00,$00,$00,$00,$00
	.byte $00,$00,$22,$22,$22,$22,$22,$22
	.byte $02,$FF
level1_r5_e:
	.byte $78,$40,$01
	.byte $FF
level1_r5_t:
	.byte $CE,$2D,$33,$2F,$2C,$2D,$2C,$31
	.byte $2D,$32,$C7,$86,$2F,$30,$2C,$30
	.byte $33,$30,$2C,$34,$2A,$29,$29,$2A
	.byte $29,$29,$2A,$2A,$36,$87,$85,$34
	.byte $A4,$29,$2A,$2A,$2A,$20,$C8,$21
	.byte $2B,$86,$83,$2E,$32,$25,$D0,$22
	.byte $2F,$2D,$31,$2B,$2E,$2E,$32,$82
	.byte $34,$29,$29,$20,$8E,$64,$A9,$65
	.byte $00,$31,$24,$D3,$6C,$C7,$00,$34
	.byte $20,$93,$6B,$87,$2C,$24,$D4,$88
	.byte $31,$95,$6D,$87,$2B,$95,$64,$A7
	.byte $65,$31,$95,$23,$2C,$2C,$2F,$2B
	.byte $32,$32,$31,$32,$25,$94,$21,$2D
	.byte $C6,$2D,$24,$94,$23,$2B,$86,$2C
	.byte $25,$94,$21,$32,$86,$2F,$26,$94
	.byte $4C,$5D,$86,$2D,$93,$64,$65,$64
	.byte $C7,$2F,$24,$9C,$2E,$93,$00,$00
	.byte $4C,$5D,$86,$2F,$25,$94,$23,$30
	.byte $86,$2F,$26,$85,$64,$1F,$8E,$2C
	.byte $86,$00,$35,$1F,$84,$67,$35,$1F
	.byte $8D,$2B,$86,$00,$2F,$26,$85,$31
	.byte $35,$28,$28,$1F,$89,$22,$33,$86
	.byte $2A,$29,$20,$84,$66,$30,$00,$2F
	.byte $33,$24,$89,$21,$31,$86,$C7,$64
	.byte $2F,$00,$00,$30,$26,$89,$23,$32
	.byte $86,$86,$1D,$37,$C4,$35,$27,$27
	.byte $1F,$87,$2B,$86,$86,$23,$32,$2D
	.byte $32,$2F,$2F,$2E,$34,$2A,$2A,$2A
	.byte $20,$84,$21,$33,$30,$2C,$2D,$31
	.byte $31,$2F,$86,$64,$A6,$65,$64,$C8
	.byte $1E,$29,$2A,$A4,$29,$2A,$27,$28
	.byte $1F,$83,$D8,$30,$33,$24,$9B,$00
	.byte $2C,$26,$8B,$64,$8F,$94,$64,$89
	.byte $00,$2F,$25,$86,$64,$94,$00,$2E
	.byte $24,$8B,$C6,$8A,$00,$2D,$92,$CA
	.byte $89,$D5,$00,$33,$26,$8E,$64,$8C
	.byte $00,$2E,$25,$9B,$00,$00,$35,$1F
	.byte $9A,$82,$2B,$26,$8D,$CD,$82,$00
	.byte $35,$27,$1F,$98,$83,$00,$2E,$35
	.byte $27,$27,$28,$28,$27,$28,$28,$28
	.byte $27,$28,$28,$28,$27,$27,$27,$28
	.byte $28,$27,$28,$27,$28,$28,$28,$27
	.byte $84,$00,$00,$2E,$32,$A5,$2B,$30
	.byte $2F,$33,$30,$33,$33,$31,$2B,$30
	.byte $2C,$2D,$33,$2F,$30,$2B,$2F,$2B
	.byte $86,$D8,$9E,$FF
level1_r5:
	.byte 44, 0, 0
	.byte 48, 160
	.byte 10, 255, 255, 255
	.byte 8, 0, 0, 0
	.byte 0
	.word level1_r5_t
	.word level1_r5_p
	.word level1_r5_e
level1_r6_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$02,$00,$00,$00,$00,$02
	.byte $00,$00,$00,$00,$02,$00,$00,$00
	.byte $00,$02,$AA,$0A,$00,$00,$02,$02
	.byte $A8,$2A,$00,$02,$02,$80,$AA,$82
	.byte $02,$0A,$00,$A0,$AA,$00,$00,$00
	.byte $00,$A0,$00,$02,$00,$00,$A0,$00
	.byte $82,$02,$00,$80,$02,$82,$02,$00
	.byte $80,$02,$02,$00,$00,$00,$20,$02
	.byte $00,$00,$00,$20,$02,$00,$00,$00
	.byte $00,$00,$00,$A0,$00,$00,$82,$00
	.byte $AA,$00,$00,$AA,$2A,$2A,$00,$00
	.byte $AA,$00,$28,$00,$00,$0A,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$56
	.byte $2A,$0A,$00,$00,$8A,$AA,$AA,$00
	.byte $00,$8A,$02,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$FF
level1_r6_e:
	.byte $18,$D8,$81
	.byte $68,$C0,$0E,$20,$00,$D9
	.byte $FE
	.byte $20,$28,$03
	.byte $FF
level1_r6_t:
	.byte $28,$30,$B6,$2E,$2E,$2B,$2C,$30
	.byte $A3,$F5,$34,$2A,$29,$29,$2A,$29
	.byte $36,$5A,$65,$F4,$2F,$24,$A5,$1E
	.byte $55,$64,$F4,$31,$E6,$A2,$66,$F4
	.byte $2F,$25,$E7,$64,$F4,$2B,$26,$E7
	.byte $00,$F4,$30,$E9,$F4,$33,$E9,$F4
	.byte $2E,$25,$E8,$F4,$32,$E9,$F4,$2E
	.byte $26,$E8,$F4,$00,$35,$28,$1F,$E6
	.byte $F5,$00,$30,$26,$E6,$F6,$2D,$E7
	.byte $F6,$00,$35,$28,$1F,$E4,$F7,$00
	.byte $2E,$26,$E4,$F8,$34,$20,$E4,$F7
	.byte $2E,$26,$A5,$F7,$2B,$24,$E5,$F7
	.byte $2D,$26,$E5,$F7,$2E,$25,$E5,$F7
	.byte $00,$35,$27,$1F,$E3,$F8,$00,$2C
	.byte $35,$1F,$E2,$F9,$00,$34,$20,$E2
	.byte $F9,$2F,$25,$A3,$F9,$2B,$24,$E3
	.byte $F9,$00,$35,$1F,$E2,$FA,$2B,$25
	.byte $E2,$FA,$2E,$26,$E2,$FA,$33,$35
	.byte $27,$28,$FA,$32,$2D,$30,$31,$F9
	.byte $34,$2A,$2A,$29,$29,$F8,$2F,$24
	.byte $C4,$68,$EC,$2B,$2B,$2E,$2D,$2B
	.byte $2B,$2E,$2D,$2B,$2B,$2E,$2D,$32
	.byte $E1,$A4,$EC,$CE,$65,$64,$E3,$EC
	.byte $B2,$FE,$FE,$EC,$CE,$65,$64,$E3
	.byte $EC,$59,$5E,$5E,$5F,$59,$5E,$5E
	.byte $5F,$59,$5E,$5E,$5F,$5D,$5B,$61
	.byte $53,$52,$52,$34,$29,$2A,$29,$2A
	.byte $29,$2A,$2A,$29,$C3,$2A,$54,$55
	.byte $2B,$A4,$2F,$24,$A3,$22,$2F,$A4
	.byte $20,$AB,$3F,$49,$29,$36,$30,$E2
	.byte $2D,$26,$E3,$1E,$36,$33,$32,$2E
	.byte $2E,$AE,$3F,$4E,$33,$E2,$34,$20
	.byte $E3,$00,$02,$29,$2A,$2A,$29,$EF
	.byte $4D,$2D,$E1,$32,$24,$A5,$3D,$A4
	.byte $F0,$33,$E1,$31,$26,$E5,$3C,$E4
	.byte $EF,$4C,$2E,$E1,$34,$20,$EA,$E1
	.byte $3F,$1D,$1F,$E9,$3F,$1D,$37,$00
	.byte $34,$20,$A6,$3E,$E4,$E2,$22,$35
	.byte $27,$1F,$E8,$23,$32,$2B,$25,$A7
	.byte $01,$28,$28,$27,$28,$E2,$1E,$29
	.byte $29,$20,$E8,$45,$54,$36,$26,$E7
	.byte $22,$31,$2E,$33,$2E,$E1,$AE,$3F
	.byte $22,$E8,$21,$2F,$A3,$F0,$23,$E8
	.byte $23,$30,$E3,$F0,$21,$E7,$1D,$37
	.byte $A4,$F0,$1E,$20,$E6,$1E,$29,$36
	.byte $2B,$E2,$EF,$AB,$21,$E3,$FB,$33
	.byte $E2,$FA,$23,$2E,$E2,$FB,$2D,$E2
	.byte $EF,$90,$1D,$1F,$E6,$1D,$27,$37
	.byte $2E,$E2,$F0,$21,$26,$E6,$23,$30
	.byte $32,$33,$E2,$F0,$22,$35,$1F,$E5
	.byte $1E,$2A,$36,$E3,$F1,$34,$20,$E5
	.byte $00,$3F,$21,$32,$E2,$EC,$90,$1D
	.byte $27,$28,$37,$20,$A7,$E2,$2D,$E2
	.byte $ED,$21,$32,$31,$51,$A8,$E1,$23
	.byte $32,$E2,$EE,$33,$5A,$EB,$30,$E2
	.byte $EA,$48,$53,$53,$58,$5A,$E1,$61
	.byte $52,$53,$46,$E6,$4C,$5B,$E2,$EA
	.byte $4C,$56,$56,$E1,$5B,$59,$5C,$56
	.byte $64,$C7,$65,$64,$59,$E2,$EA,$49
	.byte $54,$54,$55,$55,$54,$62,$60,$4B
	.byte $A5,$4C,$5A,$5F,$5A,$56,$5A,$EA
	.byte $A6,$45,$47,$A6,$45,$55,$54,$55
	.byte $55,$54,$F0,$AE,$1F,$FD,$35,$28
	.byte $28,$1F,$FA,$2A,$29,$36,$35,$28
	.byte $1F,$F8,$68,$68,$1E,$29,$29,$20
	.byte $F8,$BE,$FE,$FE,$E7,$1D,$28,$28
	.byte $53,$53,$46,$F1,$E7,$1E,$36,$32
	.byte $5B,$5C,$61,$53,$53,$52,$4A,$ED
	.byte $E7,$00,$4C,$5C,$A3,$5C,$59,$5C
	.byte $61,$52,$53,$53,$4A,$E9,$52,$53
	.byte $52,$53,$53,$C3,$52,$63,$A8,$5B
	.byte $5E,$58,$51,$E4,$48,$C4,$53,$FF
level1_r6:
	.byte 40, 15, 0
	.byte 32, 184
	.byte 12, 255, 255, 255
	.byte 24, 0, 0, 0
	.byte 0
	.word level1_r6_t
	.word level1_r6_p
	.word level1_r6_e
level1_r7_p:
	.byte $A0,$2A,$22,$88,$88,$08,$00,$00
	.byte $00,$00,$00,$00,$22,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$02,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$0A,$00,$00,$00,$0A
	.byte $00,$08,$80,$02,$00,$00,$00,$00
	.byte $00,$0A,$28,$00,$00,$00,$00,$00
	.byte $06,$44,$05,$00,$00,$00,$00,$00
	.byte $05,$11,$00,$00,$00,$00,$00,$A0
	.byte $0A,$FF
level1_r7_e:
	.byte $98,$68,$7F
	.byte $FF
level1_r7_t:
	.byte $CA,$5D,$66,$C4,$66,$5B,$CC,$8A
	.byte $5E,$86,$5C,$82,$32,$32,$2C,$2D
	.byte $30,$2E,$2D,$31,$2F,$31,$2D,$30
	.byte $2E,$2F,$2D,$85,$5F,$86,$5E,$58
	.byte $60,$29,$2A,$29,$2A,$A6,$65,$29
	.byte $29,$2A,$29,$2A,$36,$31,$32,$2F
	.byte $32,$5A,$86,$64,$65,$64,$C6,$6C
	.byte $00,$00,$00,$C5,$1E,$2A,$2A,$55
	.byte $65,$65,$86,$66,$C8,$6B,$83,$85
	.byte $C6,$86,$64,$88,$6D,$83,$8B,$64
	.byte $85,$C9,$64,$65,$65,$65,$8B,$C5
	.byte $64,$65,$64,$87,$4C,$58,$58,$56
	.byte $90,$CA,$4C,$5B,$00,$00,$9A,$4E
	.byte $58,$82,$97,$48,$52,$53,$63,$00
	.byte $00,$00,$97,$4C,$57,$5F,$C4,$8B
	.byte $3F,$64,$AA,$65,$64,$C6,$8C,$4E
	.byte $5D,$5B,$5E,$5A,$5C,$5A,$5F,$5B
	.byte $5E,$5B,$C7,$8C,$4C,$5F,$C6,$5F
	.byte $5B,$5A,$5E,$58,$5B,$84,$8C,$4E
	.byte $56,$85,$60,$54,$54,$54,$55,$55
	.byte $54,$62,$83,$8C,$4D,$58,$57,$5F
	.byte $5F,$60,$54,$4B,$C5,$3F,$22,$83
	.byte $8C,$49,$55,$55,$55,$54,$47,$C7
	.byte $3F,$1E,$36,$82,$8B,$CF,$3F,$4D
	.byte $5A,$00,$9B,$4C,$56,$00,$9B,$4D
	.byte $5E,$00,$9B,$4E,$5F,$00,$8A,$3F
	.byte $64,$65,$65,$65,$64,$8C,$5E,$00
	.byte $8C,$60,$47,$CC,$82,$5D,$00,$8C
	.byte $25,$CB,$3F,$64,$27,$37,$00,$00
	.byte $8C,$24,$8D,$33,$00,$00,$00,$89
	.byte $3F,$64,$65,$8E,$2F,$83,$8B,$60
	.byte $20,$8C,$4C,$31,$83,$8B,$50,$CA
	.byte $6B,$82,$4D,$2D,$83,$8B,$47,$85
	.byte $6B,$88,$33,$83,$89,$C8,$6D,$85
	.byte $3F,$1D,$37,$C4,$91,$1D,$1F,$85
	.byte $23,$30,$84,$91,$23,$24,$83,$6D
	.byte $82,$33,$84,$90,$1D,$37,$84,$44
	.byte $52,$37,$C5,$90,$02,$0F,$20,$83
	.byte $23,$32,$C6,$90,$3D,$C5,$22,$2B
	.byte $86,$90,$3C,$85,$05,$17,$86,$96
	.byte $06,$15,$86,$90,$3E,$86,$16,$86
	.byte $90,$01,$0E,$0E,$0D,$0B,$0B,$3B
	.byte $C7,$8F,$1D,$37,$30,$18,$1A,$19
	.byte $16,$C8,$8F,$21,$31,$CD,$90,$2E
	.byte $8D,$90,$33,$8D,$FF
level1_r7:
	.byte 0, 0, 0
	.byte 32, 192
	.byte 255, 255, 255, 14
	.byte 0, 0, 0, 0
	.byte 3
	.word level1_r7_t
	.word level1_r7_p
	.word level1_r7_e
level1_r8_p:
	.byte $22,$22,$22,$00,$00,$00,$20,$02
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$FE,$FE,$00,$00,$00,$00
	.byte $00,$00,$50,$00,$00,$00,$00,$00
	.byte $00,$00,$10,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$FE,$FE,$FE,$FF
level1_r8_e:
	.byte $90,$60,$7F
	.byte $FF
level1_r8_t:
	.byte $CF,$22,$31,$CD,$8F,$21,$2D,$2F
	.byte $2B,$30,$2F,$2C,$2E,$31,$30,$2B
	.byte $30,$2F,$32,$33,$8F,$64,$AE,$65
	.byte $8F,$6C,$CE,$A9,$65,$64,$85,$6B
	.byte $8E,$5C,$59,$56,$58,$5D,$5D,$51
	.byte $C8,$8F,$C6,$4F,$88,$C5,$3F,$6B
	.byte $88,$86,$61,$52,$4A,$95,$86,$00
	.byte $58,$50,$91,$64,$65,$65,$65,$87
	.byte $00,$61,$52,$52,$52,$46,$88,$6D
	.byte $84,$66,$5B,$59,$56,$88,$00,$5F
	.byte $5A,$56,$64,$A9,$65,$64,$84,$58
	.byte $57,$59,$89,$C4,$5C,$5B,$5C,$56
	.byte $56,$5B,$50,$C6,$66,$5E,$82,$8B
	.byte $5A,$5C,$57,$56,$5B,$57,$58,$56
	.byte $51,$86,$64,$65,$65,$65,$56,$5B
	.byte $5F,$57,$5E,$5C,$5E,$5D,$59,$59
	.byte $60,$A4,$55,$54,$54,$54,$55,$4B
	.byte $86,$C4,$54,$A4,$55,$54,$55,$54
	.byte $55,$55,$47,$D3,$AB,$68,$93,$DE
	.byte $9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E
	.byte $8E,$3C,$8F,$9E,$9E,$9E,$8E,$3E
	.byte $8F,$8D,$44,$53,$46,$8E,$8D,$4D
	.byte $5B,$61,$52,$53,$4A,$8B,$8D,$4E
	.byte $5B,$00,$5E,$5C,$61,$52,$4A,$89
	.byte $8D,$45,$55,$62,$00,$00,$00,$58
	.byte $61,$52,$53,$4A,$86,$8D,$00,$00
	.byte $4C,$58,$82,$00,$00,$57,$58,$61
	.byte $52,$52,$A4,$53,$8F,$4D,$56,$84
	.byte $00,$00,$00,$5F,$5D,$5C,$59,$58
	.byte $5D,$8F,$4C,$58,$87,$C6,$8F,$4D
	.byte $5E,$8D,$90,$5D,$8D,$90,$59,$8D
	.byte $8F,$4E,$5C,$8D,$8F,$4C,$5D,$8D
	.byte $8F,$4D,$8E,$90,$5F,$8D,$8F,$4C
	.byte $56,$8D,$8F,$4D,$8E,$8F,$4E,$5C
	.byte $8D,$90,$56,$8D,$FF
level1_r8:
	.byte 48, 0, 0
	.byte 0, 104
	.byte 255, 255, 255, 16
	.byte 0, 0, 0, 244
	.byte 3
	.word level1_r8_t
	.word level1_r8_p
	.word level1_r8_e
level1_r9_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$A0,$00,$AA,$00,$A8,$00,$80
	.byte $0A,$00,$00,$00,$A0,$02,$00,$00
	.byte $00,$A0,$96,$02,$00,$00,$A0,$AA
	.byte $02,$00,$02,$00,$A0,$00,$00,$06
	.byte $A0,$A6,$00,$00,$02,$A0,$02,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$08,$00,$00,$00,$00,$08
	.byte $00,$00,$00,$80,$00,$00,$A0,$00
	.byte $00,$00,$00,$20,$00,$00,$00,$00
	.byte $00,$A0,$00,$00,$54,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FF
level1_r9_e:
	.byte $58,$C8,$0E,$20,$20,$00
	.byte $D0,$C0,$0E,$20,$00,$E8
	.byte $FF
level1_r9_t:
	.byte $28,$22,$BC,$58,$4F,$FB,$59,$60
	.byte $4B,$FA,$60,$54,$47,$00,$FA,$50
	.byte $A3,$FA,$24,$E3,$FA,$35,$1F,$E2
	.byte $FA,$2E,$25,$E2,$FA,$33,$26,$E2
	.byte $FA,$5B,$4F,$E2,$FA,$00,$61,$53
	.byte $4A,$FB,$00,$57,$50,$FC,$00,$61
	.byte $FD,$00,$FE,$FE,$FD,$2F,$FC,$34
	.byte $2A,$FB,$32,$26,$00,$FB,$2F,$24
	.byte $E1,$FB,$34,$20,$E1,$FA,$2F,$26
	.byte $A2,$FA,$2E,$24,$E2,$FA,$2F,$E3
	.byte $FA,$34,$20,$E2,$FA,$51,$A3,$FA
	.byte $4F,$E3,$FA,$50,$E3,$FA,$61,$53
	.byte $4A,$E1,$FA,$00,$60,$4B,$E1,$FA
	.byte $5B,$4F,$A2,$FA,$56,$51,$E2,$FA
	.byte $57,$E3,$FA,$58,$50,$E2,$FA,$5A
	.byte $E3,$FA,$2E,$25,$E2,$FA,$34,$20
	.byte $E2,$FA,$25,$A3,$FA,$24,$E3,$FE
	.byte $FA,$20,$E3,$A5,$64,$33,$2D,$34
	.byte $29,$20,$B0,$4C,$5F,$5B,$E6,$2A
	.byte $29,$20,$B2,$4E,$60,$54,$E5,$A3
	.byte $3D,$F2,$02,$4B,$00,$E8,$3C,$F2
	.byte $3D,$A2,$E8,$B3,$3C,$E2,$FE,$FE
	.byte $FB,$A3,$FE,$FE,$FE,$53,$52,$46
	.byte $FB,$2D,$32,$35,$1F,$F0,$93,$93
	.byte $E8,$A3,$35,$1F,$E3,$1D,$28,$1F
	.byte $E8,$3F,$2B,$2B,$92,$E7,$E3,$2F
	.byte $24,$E3,$21,$31,$26,$E8,$00,$91
	.byte $91,$A8,$30,$2C,$31,$E6,$30,$35
	.byte $1F,$E8,$AA,$29,$29,$2A,$36,$25
	.byte $E4,$2F,$32,$26,$F2,$A3,$23,$E4
	.byte $1E,$29,$2A,$20,$F2,$E3,$02,$20
	.byte $E3,$3D,$B5,$E3,$3D,$A4,$3E,$F5
	.byte $E3,$3E,$E3,$1D,$27,$1F,$EE,$93
	.byte $E5,$E3,$01,$C3,$27,$37,$31,$24
	.byte $ED,$3F,$1D,$E5,$E3,$23,$2B,$31
	.byte $2C,$00,$2F,$25,$EE,$1E,$E5,$E4
	.byte $2F,$00,$C3,$2D,$24,$ED,$00,$91
	.byte $E5,$E3,$21,$33,$34,$C6,$65,$64
	.byte $EB,$A6,$E3,$1E,$2A,$20,$B8,$E3
	.byte $BB,$FE,$EB,$64,$C5,$65,$64,$EC
	.byte $EB,$66,$A2,$66,$A2,$66,$EC,$EB
	.byte $64,$65,$65,$64,$65,$65,$E1,$28
	.byte $28,$52,$53,$52,$53,$46,$E5,$EB
	.byte $A3,$66,$A2,$E1,$2C,$2C,$5B,$59
	.byte $58,$5F,$50,$E5,$EE,$64,$52,$53
	.byte $64,$A5,$5D,$4F,$E5,$EE,$00,$4D
	.byte $5E,$A7,$61,$53,$4A,$E3,$EF,$23
	.byte $2E,$E7,$00,$5F,$51,$E3,$E6,$64
	.byte $65,$64,$E7,$2F,$E8,$5D,$4F,$E3
	.byte $E6,$4C,$5A,$51,$E4,$48,$52,$63
	.byte $AA,$61,$4A,$E2,$E6,$4E,$5B,$61
	.byte $53,$53,$52,$53,$63,$59,$AC,$61
	.byte $28,$28,$E6,$4D,$5F,$00,$59,$5C
	.byte $5C,$5E,$AF,$2C,$30,$E6,$4C,$5B
	.byte $E1,$B5,$FF
level1_r9:
	.byte 32, 15, 0
	.byte 0, 200
	.byte 255, 255, 255, 18
	.byte 0, 0, 0, 242
	.byte 0
	.word level1_r9_t
	.word level1_r9_p
	.word level1_r9_e
level1_r10_p:
	.byte $00,$00,$00,$00,$2A,$A0,$22,$00
	.byte $00,$00,$00,$00,$0A,$00,$00,$00
	.byte $00,$00,$00,$00,$22,$00,$00,$00
	.byte $00,$00,$00,$00,$A8,$00,$00,$00
	.byte $00,$00,$00,$00,$A2,$08,$00,$00
	.byte $00,$00,$00,$00,$88,$00,$00,$00
	.byte $00,$00,$00,$00,$2A,$00,$00,$00
	.byte $8A,$00,$00,$88,$8A,$00,$00,$08
	.byte $00,$00,$00,$22,$22,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FF
level1_r10_e:
	.byte $28,$98,$03
	.byte $98,$A8,$03
	.byte $FF
level1_r10_t:
	.byte $C4,$30,$34,$20,$00,$00,$00,$23
	.byte $34,$2A,$29,$20,$C9,$4C,$5A,$59
	.byte $5A,$5C,$59,$84,$2C,$24,$C4,$22
	.byte $20,$CC,$4D,$56,$60,$55,$55,$54
	.byte $84,$33,$85,$1E,$CD,$4D,$60,$47
	.byte $00,$00,$00,$84,$2C,$26,$84,$CE
	.byte $4C,$51,$C4,$84,$2D,$25,$92,$4D
	.byte $47,$84,$84,$2E,$26,$8F,$44,$52
	.byte $52,$4F,$C5,$84,$30,$90,$49,$54
	.byte $54,$4B,$85,$84,$2B,$90,$C9,$84
	.byte $30,$24,$98,$84,$00,$35,$1F,$97
	.byte $85,$00,$65,$65,$65,$64,$69,$84
	.byte $3F,$64,$65,$65,$64,$8A,$86,$00
	.byte $8C,$65,$64,$89,$87,$26,$D6,$86
	.byte $34,$20,$96,$85,$2F,$24,$D7,$85
	.byte $32,$25,$97,$85,$2E,$26,$97,$85
	.byte $31,$24,$97,$85,$00,$35,$28,$27
	.byte $27,$4A,$93,$86,$00,$33,$2B,$2E
	.byte $A4,$65,$64,$69,$87,$64,$A6,$65
	.byte $87,$65,$65,$65,$64,$CC,$87,$86
	.byte $60,$47,$D6,$85,$30,$25,$D7,$85
	.byte $31,$24,$97,$85,$34,$20,$97,$84
	.byte $30,$24,$D8,$84,$31,$99,$84,$32
	.byte $26,$87,$48,$53,$46,$8E,$85,$24
	.byte $87,$4E,$5F,$51,$8E,$84,$2E,$26
	.byte $87,$4D,$58,$61,$52,$53,$28,$1F
	.byte $8A,$84,$2B,$85,$48,$53,$52,$63
	.byte $00,$00,$00,$2C,$2C,$35,$27,$27
	.byte $52,$52,$53,$52,$52,$52,$53,$53
	.byte $30,$2C,$2B,$2E,$31,$35,$1F,$83
	.byte $4C,$57,$5B,$C6,$2D,$32,$2D,$5A
	.byte $5A,$58,$56,$5B,$5F,$5A,$5D,$2A
	.byte $2A,$2A,$29,$29,$2A,$2A,$20,$82
	.byte $4D,$58,$D2,$CA,$4C,$57,$92,$8B
	.byte $59,$92,$8A,$4E,$57,$92,$53,$52
	.byte $53,$53,$52,$52,$53,$52,$52,$52
	.byte $63,$D3,$56,$5F,$5B,$57,$56,$5F
	.byte $59,$5C,$5F,$58,$D4,$DE,$9E,$FF
level1_r10:
	.byte 40, 0, 0
	.byte 0, 176
	.byte 20, 255, 255, 255
	.byte 20, 0, 0, 0
	.byte 3
	.word level1_r10_t
	.word level1_r10_p
	.word level1_r10_e
level1_r11_p:
	.byte $88,$88,$88,$00,$00,$00,$00,$00
	.byte $22,$02,$22,$00,$A8,$2A,$22,$02
	.byte $00,$00,$00,$00,$AA,$00,$00,$00
	.byte $00,$00,$00,$80,$2A,$02,$00,$00
	.byte $A0,$0A,$00,$A8,$8A,$00,$00,$00
	.byte $20,$02,$00,$00,$00,$A0,$0A,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$22,$02,$08
	.byte $22,$AA,$AA,$00,$00,$00,$00,$02
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FF
level1_r11_e:
	.byte $FF
level1_r11_t:
	.byte $DE,$9E,$9E,$92,$31,$30,$31,$33
	.byte $2F,$2D,$2B,$2F,$31,$33,$2D,$33
	.byte $89,$33,$30,$32,$33,$2E,$31,$2B
	.byte $31,$34,$29,$29,$29,$2A,$29,$29
	.byte $54,$54,$29,$2A,$2A,$2A,$87,$31
	.byte $34,$2A,$2A,$A6,$29,$20,$C6,$6C
	.byte $C5,$86,$34,$2A,$20,$CF,$6B,$85
	.byte $85,$31,$26,$D1,$6D,$85,$85,$32
	.byte $25,$91,$48,$53,$53,$52,$52,$52
	.byte $85,$2D,$24,$91,$4C,$5B,$5B,$56
	.byte $57,$5E,$85,$2F,$26,$90,$44,$63
	.byte $57,$5A,$5E,$56,$5C,$85,$00,$35
	.byte $1F,$8F,$4C,$56,$5C,$5D,$5D,$5C
	.byte $5A,$85,$34,$2A,$29,$29,$20,$8D
	.byte $45,$A4,$54,$55,$54,$84,$34,$20
	.byte $D1,$6C,$C6,$83,$2D,$25,$D9,$9E
	.byte $83,$2B,$24,$99,$83,$00,$35,$1F
	.byte $8E,$1D,$27,$1F,$A1,$92,$86,$31
	.byte $31,$33,$2B,$2F,$26,$8E,$21,$2B
	.byte $25,$87,$2A,$2A,$29,$2A,$29,$29
	.byte $20,$8D,$22,$31,$88,$CB,$A2,$93
	.byte $87,$1E,$29,$20,$87,$8A,$1D,$28
	.byte $28,$1F,$86,$00,$A2,$91,$C7,$8A
	.byte $1E,$29,$29,$20,$87,$C9,$52,$52
	.byte $52,$53,$53,$46,$84,$D4,$5A,$5E
	.byte $5B,$5E,$56,$50,$98,$C4,$57,$99
	.byte $84,$5B,$99,$84,$00,$61,$4A,$97
	.byte $85,$00,$61,$53,$28,$27,$28,$28
	.byte $27,$27,$52,$53,$53,$46,$8C,$86
	.byte $00,$57,$2B,$31,$33,$31,$32,$2B
	.byte $5E,$58,$5B,$4F,$8C,$87,$C9,$2E
	.byte $26,$8C,$90,$30,$25,$8C,$90,$00
	.byte $35,$28,$27,$28,$28,$1F,$87,$91
	.byte $00,$32,$2F,$33,$32,$35,$27,$27
	.byte $28,$28,$27,$28,$27,$92,$C5,$31
	.byte $33,$2E,$2F,$2C,$30,$31,$97,$C7
	.byte $9E,$9E,$9E,$9E,$FF
level1_r11:
	.byte 0, 0, 0
	.byte 48, 176
	.byte 22, 255, 255, 255
	.byte 8, 0, 0, 0
	.byte 3
	.word level1_r11_t
	.word level1_r11_p
	.word level1_r11_e
level1_r12_p:
	.byte $AA,$88,$88,$00,$80,$A8,$A0,$0A
	.byte $00,$00,$00,$00,$88,$A0,$A2,$00
	.byte $00,$00,$00,$00,$20,$20,$00,$00
	.byte $00,$00,$00,$A0,$08,$00,$00,$00
	.byte $00,$00,$00,$A0,$0A,$00,$22,$02
	.byte $00,$00,$00,$20,$8A,$00,$00,$00
	.byte $00,$00,$00,$88,$A8,$AA,$AA,$00
	.byte $00,$00,$00,$AA,$AA,$00,$01,$00
	.byte $00,$00,$00,$00,$AA,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$80,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $FF
level1_r12_e:
	.byte $FF
level1_r12_t:
	.byte $CA,$2E,$25,$00,$00,$00,$22,$2E
	.byte $CD,$8A,$31,$24,$85,$32,$33,$32
	.byte $32,$31,$88,$8A,$2D,$25,$84,$2A
	.byte $2A,$29,$2A,$29,$29,$36,$2D,$32
	.byte $2E,$2C,$2C,$30,$2F,$87,$2E,$31
	.byte $33,$31,$84,$1E,$C6,$1E,$29,$29
	.byte $2A,$2A,$29,$29,$29,$87,$64,$65
	.byte $65,$36,$35,$1F,$82,$C8,$6C,$C6
	.byte $86,$60,$4B,$00,$00,$1E,$36,$35
	.byte $27,$28,$1F,$87,$6B,$86,$85,$30
	.byte $25,$C4,$22,$56,$60,$20,$C8,$6D
	.byte $86,$85,$2E,$24,$84,$23,$64,$4F
	.byte $C9,$48,$52,$52,$53,$52,$53,$52
	.byte $85,$5B,$26,$84,$1E,$67,$47,$89
	.byte $45,$55,$62,$5E,$5A,$5B,$59,$85
	.byte $64,$20,$84,$00,$66,$CB,$3F,$4C
	.byte $5B,$00,$00,$00,$84,$58,$66,$C6
	.byte $67,$8D,$5E,$83,$84,$57,$87,$64
	.byte $8C,$4E,$5A,$83,$84,$60,$64,$86
	.byte $CB,$3F,$44,$63,$C4,$83,$33,$50
	.byte $D2,$3F,$4C,$56,$84,$83,$2B,$25
	.byte $91,$3F,$44,$63,$59,$84,$97,$45
	.byte $55,$55,$62,$83,$83,$2D,$24,$85
	.byte $3F,$44,$27,$28,$27,$27,$28,$1F
	.byte $84,$00,$00,$00,$3F,$4D,$5F,$82
	.byte $83,$33,$26,$86,$45,$2A,$29,$2A
	.byte $29,$29,$20,$88,$4C,$5A,$82,$83
	.byte $31,$24,$85,$CC,$3F,$48,$52,$53
	.byte $63,$00,$00,$00,$83,$2C,$26,$92
	.byte $49,$55,$62,$C4,$83,$2D,$25,$91
	.byte $00,$00,$3F,$4E,$56,$83,$83,$31
	.byte $24,$94,$49,$62,$83,$83,$00,$35
	.byte $1F,$92,$00,$3F,$4D,$58,$82,$84
	.byte $00,$35,$28,$1F,$92,$4E,$5C,$82
	.byte $85,$00,$2D,$35,$1F,$91,$4C,$56
	.byte $82,$86,$00,$00,$35,$A6,$27,$1F
	.byte $8A,$4D,$59,$82,$33,$2C,$2C,$32
	.byte $2B,$2C,$2F,$33,$30,$2B,$2F,$33
	.byte $34,$29,$20,$CA,$3F,$4E,$83,$2A
	.byte $2A,$29,$2A,$29,$29,$29,$2A,$2A
	.byte $29,$2A,$29,$20,$C9,$3F,$6B,$83
	.byte $56,$59,$5F,$CC,$3D,$86,$48,$86
	.byte $45,$55,$54,$54,$28,$27,$28,$28
	.byte $28,$27,$28,$1F,$84,$C7,$84,$6D
	.byte $C6,$33,$33,$2F,$31,$31,$33,$2D
	.byte $24,$8F,$48,$52,$53,$A4,$52,$C6
	.byte $34,$20,$8B,$00,$3F,$44,$52,$55
	.byte $54,$54,$62,$00,$00,$00,$85,$2D
	.byte $25,$CD,$3F,$6B,$C4,$4C,$5D,$82
	.byte $85,$2E,$24,$93,$45,$54,$54,$54
	.byte $85,$2C,$8F,$6D,$84,$6C,$00,$00
	.byte $00,$85,$31,$26,$8E,$44,$84,$6D
	.byte $83,$85,$59,$51,$8E,$4D,$52,$53
	.byte $52,$52,$53,$52,$53,$53,$85,$5C
	.byte $8F,$4C,$5E,$58,$57,$5E,$58,$5C
	.byte $58,$5C,$86,$50,$8E,$4E,$59,$C7
	.byte $85,$5D,$84,$1D,$27,$52,$52,$52
	.byte $4A,$83,$3F,$48,$63,$C8,$85,$5B
	.byte $84,$22,$2D,$59,$5C,$5F,$61,$52
	.byte $53,$52,$52,$63,$C9,$85,$5A,$84
	.byte $23,$30,$C4,$5E,$56,$56,$57,$CA
	.byte $85,$5B,$51,$84,$31,$84,$CE,$85
	.byte $5C,$50,$83,$22,$32,$92,$FF
level1_r12:
	.byte 44, 0, 0
	.byte 32, 168
	.byte 255, 255, 255, 24
	.byte 0, 0, 0, 252
	.byte 3
	.word level1_r12_t
	.word level1_r12_p
	.word level1_r12_e
level1_r13_p:
	.byte $00,$00,$00,$00,$00,$A0,$08,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$00,$00,$00,$00,$80,$0A
	.byte $00,$00,$00,$00,$00,$00,$20,$02
	.byte $00,$00,$00,$00,$00,$00,$88,$08
	.byte $00,$00,$00,$00,$00,$20,$22,$02
	.byte $00,$00,$00,$00,$00,$80,$00,$00
	.byte $00,$00,$00,$00,$00,$22,$00,$00
	.byte $00,$00,$FF
level1_r13_e:
	.byte $88,$A0,$0E,$20,$00,$E9
	.byte $E0,$A8,$0E,$30,$00,$E5
	.byte $FF
level1_r13_t:
	.byte $C6,$5C,$5E,$59,$51,$C4,$23,$30
	.byte $C5,$56,$5C,$5C,$57,$56,$58,$5C
	.byte $5D,$5E,$85,$60,$55,$54,$55,$4B
	.byte $85,$2E,$83,$5D,$60,$54,$55,$55
	.byte $54,$54,$54,$55,$54,$55,$84,$60
	.byte $4B,$C8,$21,$83,$60,$54,$47,$C9
	.byte $83,$5B,$4F,$C9,$1E,$29,$36,$32
	.byte $51,$CB,$83,$5C,$51,$89,$00,$00
	.byte $4C,$57,$4F,$8B,$83,$57,$4F,$8D
	.byte $50,$8B,$83,$5E,$50,$8B,$49,$54
	.byte $47,$8B,$83,$59,$4F,$8B,$CE,$83
	.byte $00,$61,$46,$98,$84,$00,$61,$52
	.byte $53,$52,$46,$94,$85,$00,$5F,$5A
	.byte $5E,$61,$A4,$65,$64,$8F,$86,$C4
	.byte $56,$56,$51,$D1,$8A,$60,$55,$4B
	.byte $91,$89,$5D,$4F,$D3,$89,$57,$94
	.byte $8A,$50,$93,$89,$59,$4F,$93,$89
	.byte $00,$61,$52,$28,$1F,$90,$8A,$00
	.byte $2F,$33,$24,$90,$89,$58,$2D,$32
	.byte $32,$91,$83,$5C,$5E,$57,$5C,$5E
	.byte $60,$55,$29,$29,$2A,$20,$90,$82
	.byte $60,$54,$55,$54,$55,$55,$4B,$D5
	.byte $00,$5B,$4F,$A6,$68,$95,$00,$5C
	.byte $50,$69,$DA,$00,$59,$9C,$00,$5D
	.byte $4F,$A5,$6A,$96,$00,$00,$61,$52
	.byte $53,$53,$53,$4A,$96,$82,$00,$58
	.byte $5E,$59,$5E,$61,$28,$27,$27,$28
	.byte $28,$1F,$90,$83,$C5,$2F,$2B,$32
	.byte $30,$32,$26,$90,$87,$31,$2D,$2D
	.byte $32,$2F,$32,$25,$90,$5F,$5D,$5E
	.byte $5A,$5C,$57,$60,$A6,$65,$64,$90
	.byte $54,$55,$54,$54,$54,$55,$4B,$A7
	.byte $68,$90,$DE,$9E,$86,$1D,$1F,$A6
	.byte $6A,$90,$86,$23,$35,$A5,$65,$64
	.byte $90,$53,$52,$53,$53,$28,$28,$37
	.byte $00,$59,$58,$5A,$5F,$51,$D1,$57
	.byte $5D,$57,$5F,$2C,$2C,$C5,$5A,$92
	.byte $CC,$61,$53,$52,$53,$53,$46,$8C
	.byte $8C,$00,$58,$58,$5A,$56,$61,$52
	.byte $53,$52,$52,$53,$53,$52,$52,$53
	.byte $53,$52,$52,$FF
level1_r13:
	.byte 40, 0, 0
	.byte 0, 96
	.byte 26, 255, 255, 255
	.byte 20, 0, 0, 0
	.byte 2
	.word level1_r13_t
	.word level1_r13_p
	.word level1_r13_e
level1_r14_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $50,$00,$00,$00,$20,$00,$00,$00
	.byte $00,$00,$00,$00,$AA,$02,$00,$00
	.byte $00,$00,$00,$00,$A8,$00,$00,$00
	.byte $00,$00,$00,$00,$22,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$80,$08,$00,$00
	.byte $00,$00,$00,$00,$A0,$8A,$00,$00
	.byte $00,$00,$00,$A0,$20,$0A,$88,$00
	.byte $88,$88,$00,$A0,$00,$0A,$20,$0A
	.byte $FF
level1_r14_e:
	.byte $FF
level1_r14_t:
	.byte $DE,$9E,$8C,$56,$58,$5F,$5B,$5C
	.byte $5A,$5D,$58,$57,$59,$56,$5C,$5F
	.byte $5C,$5C,$58,$56,$56,$8A,$59,$60
	.byte $54,$54,$55,$A5,$54,$55,$54,$54
	.byte $54,$55,$54,$55,$55,$54,$55,$89
	.byte $60,$29,$20,$CD,$3D,$C4,$88,$5F
	.byte $4F,$CF,$3C,$84,$88,$5A,$95,$88
	.byte $58,$51,$8F,$3E,$84,$88,$00,$35
	.byte $1F,$89,$3F,$44,$53,$53,$52,$53
	.byte $53,$53,$52,$52,$89,$00,$35,$28
	.byte $1F,$00,$A5,$64,$82,$45,$55,$62
	.byte $5A,$5C,$5A,$57,$5D,$58,$8A,$34
	.byte $20,$00,$00,$86,$00,$00,$3F,$45
	.byte $55,$54,$62,$00,$00,$00,$89,$33
	.byte $24,$00,$00,$00,$88,$00,$00,$00
	.byte $3F,$4C,$57,$82,$89,$60,$20,$83
	.byte $CB,$3F,$4E,$5B,$82,$88,$5F,$51
	.byte $CF,$3F,$49,$62,$82,$88,$00,$35
	.byte $1F,$8E,$00,$3F,$4D,$5E,$00,$89
	.byte $2E,$24,$91,$5D,$00,$89,$31,$26
	.byte $90,$4C,$56,$00,$89,$00,$35,$1F
	.byte $8F,$4E,$5F,$00,$8A,$5B,$4F,$8F
	.byte $4C,$5A,$00,$8A,$00,$61,$4A,$8E
	.byte $4E,$82,$87,$5B,$5F,$5E,$5F,$56
	.byte $50,$8C,$3F,$48,$63,$00,$00,$86
	.byte $60,$55,$54,$55,$54,$54,$4B,$8D
	.byte $4D,$59,$82,$85,$5A,$50,$D2,$3F
	.byte $4E,$83,$85,$60,$47,$93,$4C,$56
	.byte $82,$84,$5E,$50,$D3,$3F,$49,$62
	.byte $82,$84,$56,$94,$00,$3F,$4C,$5B
	.byte $00,$84,$5D,$85,$1D,$27,$1F,$8E
	.byte $4D,$5D,$5C,$84,$57,$85,$22,$2E
	.byte $24,$8E,$49,$55,$54,$84,$5D,$85
	.byte $1E,$36,$26,$8D,$C4,$84,$56,$51
	.byte $84,$00,$22,$24,$91,$84,$59,$50
	.byte $86,$26,$91,$84,$57,$4F,$85,$23
	.byte $35,$27,$1F,$8F,$84,$00,$61,$1F
	.byte $84,$21,$2B,$2B,$61,$A4,$65,$64
	.byte $8A,$85,$5E,$24,$84,$22,$32,$00
	.byte $00,$5B,$56,$5B,$4F,$CB,$85,$5B
	.byte $26,$84,$66,$33,$82,$00,$00,$30
	.byte $24,$8B,$85,$00,$35,$1F,$84,$2C
	.byte $84,$00,$35,$1F,$8A,$86,$30,$24
	.byte $8A,$30,$26,$8A,$86,$2B,$25,$84
	.byte $33,$85,$00,$35,$28,$1F,$88,$86
	.byte $2E,$24,$84,$31,$86,$00,$2C,$35
	.byte $A4,$27,$28,$28,$27,$28,$86,$30
	.byte $85,$2D,$87,$00,$00,$2E,$31,$2E
	.byte $31,$32,$30,$33,$30,$FF
level1_r14:
	.byte 40, 0, 0
	.byte 40, 184
	.byte 255, 255, 255, 255
	.byte 0, 0, 0, 0
	.byte 2
	.word level1_r14_t
	.word level1_r14_p
	.word level1_r14_e
level1_rEnd_p:
	.byte $00,$00,$00,$00,$00,$A0,$08,$00
	.byte $00,$00,$00,$00,$00,$60,$22,$02
	.byte $00,$00,$00,$00,$00,$90,$AA,$0A
	.byte $00,$00,$00,$00,$00,$A0,$0A,$00
	.byte $00,$00,$00,$00,$00,$2A,$00,$00
	.byte $00,$00,$00,$00,$00,$0A,$00,$00
	.byte $00,$00,$00,$00,$00,$8A,$00,$00
	.byte $00,$00,$00,$00,$00,$54,$00,$00
	.byte $00,$00,$00,$00,$00,$51,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $FF
level1_rEnd_e:
	.byte $FF
level1_rEnd_t:
	.byte $D6,$21,$2F,$C6,$96,$1E,$36,$86
	.byte $96,$00,$22,$33,$85,$97,$23,$2B
	.byte $85,$97,$21,$2C,$2C,$33,$30,$2F
	.byte $2B,$97,$1E,$29,$A5,$2A,$97,$3D
	.byte $C6,$97,$3C,$86,$97,$3E,$86,$97
	.byte $01,$28,$27,$27,$27,$28,$27,$97
	.byte $22,$2D,$33,$33,$30,$32,$2D,$97
	.byte $23,$30,$C5,$97,$21,$2D,$85,$97
	.byte $22,$2C,$85,$97,$21,$32,$85,$96
	.byte $1D,$37,$C6,$95,$1D,$37,$C7,$92
	.byte $A1,$87,$1D,$28,$37,$C8,$8C,$70
	.byte $74,$78,$7C,$7F,$A1,$83,$A1,$88
	.byte $23,$30,$C9,$8B,$6E,$71,$75,$79
	.byte $7D,$80,$A1,$84,$A1,$89,$21,$2D
	.byte $89,$8B,$6F,$72,$76,$7A,$7D,$A1
	.byte $81,$A1,$85,$82,$33,$89,$8B,$00
	.byte $73,$77,$7B,$7E,$A1,$82,$A1,$86
	.byte $A1,$8A,$21,$30,$89,$8C,$C6,$A1
	.byte $8B,$1E,$36,$2D,$88,$92,$00,$00
	.byte $23,$89,$95,$2E,$88,$94,$1E,$36
	.byte $88,$94,$00,$21,$31,$87,$95,$1E
	.byte $36,$87,$95,$00,$05,$87,$96,$07
	.byte $13,$86,$95,$A1,$8C,$07,$14,$86
	.byte $95,$A1,$8D,$05,$17,$86,$95,$A1
	.byte $8E,$05,$1A,$86,$95,$A1,$8F,$07
	.byte $13,$86,$95,$00,$06,$19,$86,$97
	.byte $C7,$96,$22,$87,$97,$2E,$86,$96
	.byte $23,$2B,$86,$96,$22,$32,$86,$FF
level1_rEnd:
	.byte 40, 0, 0
	.byte 48, 168
	.byte 255, 255, 255, 255
	.byte 0, 0, 0, 0
	.byte 0
	.word level1_rEnd_t
	.word level1_rEnd_p
	.word level1_rEnd_e
level1:
	.word level1_music	; music table
	.byte $01	; environment type
	.byte $0F	; room count
	.word level1_r1
	.word level1_r2
	.word level1_r3
	.word level1_r4
	.word level1_r5
	.word level1_r6
	.word level1_r7
	.word level1_r8
	.word level1_r9
	.word level1_r10
	.word level1_r11
	.word level1_r12
	.word level1_r13
	.word level1_r14
	.word level1_rEnd
