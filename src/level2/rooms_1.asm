level2_d6_p:
	.byte $FD,$FF,$F3,$0F,$00,$CC,$CC,$CC
	.byte $0C,$03,$30,$FD,$FF,$00,$CC,$CC
	.byte $70,$03,$00,$00,$FD,$FF,$CF,$00
	.byte $FD,$FF,$00,$00,$F0,$CF,$00,$FD
	.byte $FF,$00,$FD,$FF,$03,$00,$00,$00
	.byte $F0,$3F,$00,$FD,$FF,$00,$00,$0C
	.byte $00,$F0,$FD,$FF,$00,$F0,$03,$00
	.byte $FD,$FF,$00,$00,$FD,$FF,$00,$F0
	.byte $0F,$00,$00,$00,$00,$FD,$FF,$00
	.byte $F0,$03,$00,$00,$00,$00,$FD,$FF
	.byte $00,$30,$FD,$FF,$00,$CC,$0C,$F0
	.byte $3F,$00,$00,$F3,$0F,$FF
level2_d6_e:
	.byte $20,$30,$09,$10
	.byte $68,$60,$01,$00
	.byte $FF
level2_d6_t:
	.byte $CF,$E2,$C6,$C2,$A2,$C5,$E4,$C4
	.byte $C3,$C4,$C8,$C7,$8E,$E2,$DD,$BD
	.byte $C5,$E3,$E7,$BA,$DC,$86,$EA,$E3
	.byte $DD,$DF,$E0,$DE,$E3,$E1,$DE,$DD
	.byte $DF,$84,$E2,$E0,$BB,$86,$E2,$B8
	.byte $DE,$86,$A3,$C3,$E1,$C5,$A3,$C3
	.byte $EA,$C5,$C3,$C5,$C8,$E3,$E2,$E3
	.byte $C6,$C3,$D0,$85,$E2,$BA,$E0,$86
	.byte $CA,$E5,$B9,$C6,$C4,$C5,$B6,$C6
	.byte $E3,$E7,$B9,$DD,$86,$8A,$E2,$B3
	.byte $B6,$C9,$E4,$E7,$B3,$C5,$C8,$85
	.byte $BF,$A2,$C1,$E4,$C0,$BE,$BF,$B5
	.byte $83,$3D,$CC,$E3,$E7,$BA,$DD,$84
	.byte $A2,$E2,$DF,$A3,$E1,$E1,$BB,$83
	.byte $CD,$E3,$E7,$B8,$E1,$84,$C5,$E2
	.byte $DF,$BD,$91,$E3,$BA,$E0,$DF,$83
	.byte $85,$E0,$92,$E1,$B9,$A2,$C3,$E1
	.byte $C8,$82,$85,$E2,$E3,$BB,$91,$E6
	.byte $D6,$00,$E7,$B9,$E2,$00,$85,$E1
	.byte $DD,$91,$00,$00,$00,$84,$85,$E3
	.byte $E2,$C7,$B4,$88,$E3,$B0,$BE,$B4
	.byte $88,$E1,$BA,$82,$85,$E4,$E0,$C6
	.byte $C3,$D1,$87,$E4,$BA,$DF,$C7,$B5
	.byte $87,$E3,$B8,$DD,$00,$85,$E2,$E2
	.byte $BC,$C9,$E6,$BA,$E3,$C6,$C4,$CB
	.byte $D2,$85,$E3,$B9,$E1,$00,$85,$E1
	.byte $DD,$8A,$E3,$B2,$C2,$B6,$C7,$82
	.byte $E0,$00,$85,$E3,$DC,$C7,$D1,$88
	.byte $CA,$82,$E2,$E1,$00,$85,$E2,$E2
	.byte $BD,$D2,$E5,$E7,$B1,$C9,$00,$00
	.byte $85,$E2,$E0,$BB,$93,$E2,$BA,$DF
	.byte $82,$85,$E2,$DD,$BD,$94,$E1,$E2
	.byte $82,$85,$E4,$00,$C7,$BF,$D2,$91
	.byte $E2,$B8,$DF,$82,$86,$E2,$DC,$BD
	.byte $D1,$E5,$E7,$BA,$E1,$E0,$00,$86
	.byte $E2,$E3,$BB,$86,$E1,$ED,$8B,$E4
	.byte $B2,$C3,$C8,$00,$86,$E2,$DF,$BD
	.byte $86,$E2,$B0,$B4,$89,$E5,$00,$00
	.byte $E7,$B9,$E2,$86,$E4,$00,$C7,$BE
	.byte $B5,$84,$E3,$BA,$C7,$B4,$8C,$E1
	.byte $DC,$87,$E3,$E3,$C6,$B6,$84,$E3
	.byte $B3,$C2,$B7,$8C,$E1,$DE,$88,$E1
	.byte $BC,$C5,$A3,$E8,$8B,$E2,$B8,$DC
	.byte $87,$E2,$E2,$BB,$85,$CD,$E3,$E7
	.byte $B9,$DC,$87,$E2,$C6,$B6,$94,$DF
	.byte $86,$E2,$DD,$BC,$D3,$E3,$E7,$BA
	.byte $E0,$86,$E1,$DC,$93,$E4,$E7,$B0
	.byte $C9,$00,$86,$E2,$E3,$BB,$93,$E3
	.byte $B9,$E0,$00,$86,$DF,$94,$E3,$B8
	.byte $E1,$00,$86,$E2,$00,$C7,$A2,$C1
	.byte $E1,$B5,$90,$E3,$BA,$E2,$00,$87
	.byte $E5,$00,$DF,$DF,$C7,$D2,$8F,$E3
	.byte $B9,$E1,$00,$88,$E3,$00,$DC,$BD
	.byte $CF,$E4,$E7,$BA,$DC,$00,$9B,$E3
	.byte $B9,$E3,$00,$89,$E4,$00,$C7,$C1
	.byte $B4,$8C,$E5,$B1,$C0,$C9,$00,$00
	.byte $8A,$E7,$00,$DF,$C7,$C1,$C0,$BE
	.byte $B5,$88,$E5,$BA,$E1,$00,$00,$00
	.byte $8B,$E8,$00,$00,$E3,$DC,$DF,$C7
	.byte $C0,$B5,$86,$E2,$B8,$E3,$83,$FF
level2_d6:
	.byte 40, 0
	.byte 255, 255, 255, 32
	.byte 0, 0, 0, 14
	.byte 4
	.byte 0, 0, 0, 112
	.byte 0, 0, 0, 31
	.byte 0, 0, 0, 240
	.word level2_d6_t
	.word level2_d6_p
	.word level2_d6_e
level2_r11_p:
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $00,$00,$00,$00,$00,$A2,$08,$00
	.byte $00,$00,$00,$00,$00,$20,$AA,$00
	.byte $00,$00,$00,$74,$06,$80,$AA,$00
	.byte $00,$00,$00,$F5,$0F,$00,$00,$00
	.byte $00,$00,$00,$70,$0B,$00,$00,$00
	.byte $00,$40,$00,$C0,$04,$00,$00,$00
	.byte $00,$80,$30,$31,$22,$00,$00,$00
	.byte $00,$00,$00,$00,$88,$80,$08,$00
	.byte $00,$00,$00,$00,$AA,$20,$0A,$00
	.byte $00,$80,$88,$08,$00,$A0,$0A,$00
	.byte $00,$20,$A2,$AA,$0A,$A0,$02,$00
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $FF
level2_r11_e:
	.byte $FF
level2_r11_t:
	.byte $D6,$21,$33,$C6,$96,$22,$32,$86
	.byte $9E,$97,$2C,$86,$95,$1D,$37,$C7
	.byte $95,$1E,$29,$36,$86,$95,$00,$00
	.byte $22,$2C,$85,$98,$33,$85,$97,$1E
	.byte $2A,$36,$84,$97,$00,$00,$21,$31
	.byte $83,$99,$22,$2D,$83,$9A,$2C,$83
	.byte $8D,$E5,$A9,$8E,$8F,$88,$AD,$88
	.byte $31,$83,$8D,$E5,$9D,$81,$85,$79
	.byte $A5,$87,$21,$2E,$83,$8D,$E5,$9E
	.byte $82,$86,$7A,$A6,$88,$30,$83,$8D
	.byte $ED,$9F,$83,$87,$7B,$A7,$44,$53
	.byte $52,$52,$27,$28,$27,$37,$C4,$8D
	.byte $EE,$98,$80,$84,$78,$A0,$4E,$57
	.byte $59,$00,$5B,$5C,$59,$5B,$5A,$83
	.byte $8D,$E5,$99,$81,$85,$79,$A1,$82
	.byte $00,$59,$57,$C7,$8D,$EB,$9A,$82
	.byte $86,$7A,$A2,$49,$54,$55,$55,$54
	.byte $62,$86,$8D,$E5,$9B,$83,$87,$7B
	.byte $A3,$C5,$4E,$57,$85,$8D,$E5,$9C
	.byte $80,$84,$78,$A4,$85,$4C,$58,$85
	.byte $8D,$E5,$9D,$81,$85,$79,$A5,$85
	.byte $4E,$57,$85,$8B,$E7,$48,$46,$AB
	.byte $96,$97,$90,$AF,$85,$4D,$86,$8B
	.byte $4D,$4F,$CA,$4C,$5C,$85,$89,$44
	.byte $52,$63,$51,$8A,$4E,$59,$85,$89
	.byte $4C,$56,$59,$8C,$56,$85,$88,$E5
	.byte $E4,$54,$55,$54,$47,$8B,$C6,$87
	.byte $EC,$A8,$88,$89,$8A,$8B,$8C,$8D
	.byte $8E,$8F,$88,$89,$AD,$84,$4C,$5B
	.byte $85,$87,$EC,$9C,$78,$7C,$80,$84
	.byte $78,$7C,$80,$84,$78,$7C,$A4,$85
	.byte $58,$85,$87,$EC,$9D,$79,$7D,$81
	.byte $85,$79,$7D,$81,$85,$79,$7D,$A5
	.byte $84,$4D,$C6,$87,$EC,$AB,$90,$91
	.byte $92,$93,$94,$95,$96,$97,$90,$91
	.byte $AE,$84,$4E,$86,$87,$00,$00,$44
	.byte $52,$53,$4A,$C5,$44,$4A,$83,$4D
	.byte $86,$89,$4D,$56,$5B,$51,$85,$4C
	.byte $51,$83,$4E,$86,$8A,$5B,$60,$4B
	.byte $8A,$4C,$5A,$85,$89,$49,$54,$4B
	.byte $C6,$23,$26,$83,$22,$2E,$85,$89
	.byte $C7,$1D,$27,$37,$24,$84,$2F,$85
	.byte $90,$23,$31,$2F,$84,$21,$2B,$85
	.byte $90,$22,$2F,$32,$84,$1E,$36,$85
	.byte $90,$1E,$2A,$2A,$20,$83,$00,$21
	.byte $2E,$84,$90,$C8,$22,$32,$84,$97
	.byte $1D,$37,$C5,$97,$22,$2B,$85,$97
	.byte $21,$2C,$85,$87,$1D,$28,$28,$28
	.byte $27,$1F,$8A,$22,$30,$85,$87,$1E
	.byte $2A,$2A,$36,$2E,$35,$A4,$27,$1F
	.byte $85,$21,$2B,$85,$87,$00,$00,$00
	.byte $23,$33,$30,$2E,$2B,$2B,$34,$20
	.byte $86,$2E,$85,$8A,$1E,$29,$29,$29
	.byte $2A,$29,$20,$C5,$1D,$37,$C6,$8A
	.byte $CC,$23,$2D,$86,$96,$21,$31,$86
	.byte $96,$23,$32,$86,$97,$2C,$86,$96
	.byte $21,$30,$86,$FF
level2_r11:
	.byte 52, 0
	.byte 255, 255, 78, 79
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r11_t
	.word level2_r11_p
	.word level2_r11_e
level2_r12d_p:
	.byte $88,$88,$00,$00,$00,$00,$00,$00
	.byte $22,$02,$00,$00,$00,$00,$00,$00
	.byte $AA,$00,$00,$00,$00,$00,$00,$00
	.byte $AA,$08,$00,$40,$0C,$00,$00,$00
	.byte $00,$AA,$00,$90,$03,$00,$00,$00
	.byte $A0,$0A,$00,$20,$03,$00,$00,$00
	.byte $A0,$0A,$00,$00,$00,$00,$00,$00
	.byte $A0,$0A,$00,$90,$09,$00,$00,$00
	.byte $A0,$0A,$00,$00,$03,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$FF
level2_r12d_e:
	.byte $FE
	.byte $58,$70,$01,$00
	.byte $FF
level2_r12d_t:
	.byte $DE,$9E,$93,$56,$58,$5C,$88,$32
	.byte $30,$2C,$2E,$33,$30,$30,$85,$5C
	.byte $83,$5A,$00,$60,$A4,$55,$62,$86
	.byte $2A,$29,$29,$29,$2A,$2A,$54,$54
	.byte $54,$A4,$55,$54,$55,$54,$54,$55
	.byte $47,$00,$00,$00,$3F,$4D,$58,$85
	.byte $CC,$6C,$C5,$6C,$84,$4E,$5B,$85
	.byte $8C,$C6,$6B,$85,$5C,$85,$86,$6B
	.byte $91,$C6,$86,$6D,$8B,$C4,$3F,$4C
	.byte $86,$27,$28,$28,$1F,$82,$48,$53
	.byte $52,$46,$8E,$59,$85,$2A,$2A,$2A
	.byte $20,$82,$4E,$60,$55,$47,$8D,$4D
	.byte $86,$C6,$4E,$4F,$CE,$3F,$45,$62
	.byte $85,$86,$4C,$47,$8E,$00,$3F,$4C
	.byte $85,$28,$28,$28,$27,$52,$53,$51
	.byte $C5,$E5,$3F,$E4,$66,$66,$5E,$87
	.byte $4D,$5C,$84,$2D,$2C,$2E,$31,$2D
	.byte $34,$4B,$86,$E4,$A9,$8E,$8F,$AC
	.byte $87,$4C,$5B,$84,$C4,$2B,$24,$C6
	.byte $E5,$3F,$9F,$83,$87,$A7,$87,$4E
	.byte $5D,$84,$84,$2E,$25,$87,$E4,$98
	.byte $80,$84,$A0,$87,$4D,$57,$84,$84
	.byte $00,$35,$1F,$86,$E4,$99,$81,$85
	.byte $A1,$87,$4C,$58,$84,$85,$32,$26
	.byte $86,$E4,$9A,$82,$86,$A2,$87,$4D
	.byte $57,$84,$84,$34,$2A,$20,$86,$E4
	.byte $9B,$83,$87,$A3,$87,$4C,$5C,$84
	.byte $83,$2D,$24,$C7,$E5,$3F,$9C,$80
	.byte $84,$A4,$87,$4D,$56,$84,$83,$2C
	.byte $26,$88,$E4,$AA,$96,$97,$AF,$88
	.byte $58,$84,$83,$2D,$25,$87,$CB,$82
	.byte $57,$84,$83,$33,$26,$94,$58,$84
	.byte $84,$25,$93,$4C,$5B,$84,$84,$24
	.byte $93,$4D,$C5,$84,$26,$87,$E5,$3F
	.byte $A9,$8E,$8F,$AC,$88,$5B,$84,$83
	.byte $2B,$25,$88,$E4,$9B,$83,$87,$A3
	.byte $87,$4C,$5C,$84,$83,$2F,$26,$88
	.byte $E4,$9C,$80,$84,$A4,$88,$57,$84
	.byte $83,$30,$25,$88,$E4,$9D,$81,$85
	.byte $A5,$88,$5D,$84,$83,$32,$26,$88
	.byte $E4,$9E,$82,$86,$A6,$88,$5C,$84
	.byte $83,$33,$24,$88,$E4,$9F,$83,$87
	.byte $A7,$88,$5A,$84,$83,$30,$89,$E4
	.byte $98,$80,$84,$A0,$88,$58,$84,$83
	.byte $2D,$89,$E4,$AA,$96,$97,$AF,$87
	.byte $4D,$59,$84,$83,$2F,$26,$88,$E4
	.byte $E4,$66,$66,$5E,$88,$57,$84,$83
	.byte $2B,$25,$87,$CB,$3F,$4E,$58,$84
	.byte $83,$00,$61,$46,$90,$3F,$44,$63
	.byte $C5,$84,$00,$50,$91,$4C,$57,$85
	.byte $84,$56,$92,$4E,$5D,$85,$84,$00
	.byte $4F,$91,$4D,$C6,$84,$56,$51,$8C
	.byte $6D,$84,$4E,$5D,$85,$84,$00,$61
	.byte $53,$46,$8A,$44,$52,$53,$53,$52
	.byte $63,$C6,$85,$00,$5D,$61,$53,$53
	.byte $4A,$87,$4D,$5A,$00,$5D,$56,$C7
	.byte $86,$00,$00,$59,$00,$61,$46,$86
	.byte $4E,$5D,$CA,$88,$00,$00,$59,$4F
	.byte $86,$4C,$59,$8A,$8A,$5A,$50,$87
	.byte $58,$8A,$8A,$00,$61,$A4,$52,$53
	.byte $52,$63,$CB,$8B,$00,$00,$5B,$59
	.byte $00,$59,$58,$CC,$FF
level2_r12d:
	.byte 48, 0
	.byte 87, 255, 255, 255
	.byte 36, 0, 0, 0
	.byte 0
	.byte 254, 0, 0, 0
	.byte 86, 0, 0, 0
	.byte 244, 0, 0, 0
	.word level2_r12d_t
	.word level2_r12d_p
	.word level2_r12d_e
level2_r12c_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$70,$03,$00,$00,$00
	.byte $70,$07,$00,$00,$00,$20,$0B,$00
	.byte $00,$00,$80,$0D,$00,$00,$00,$A0
	.byte $05,$00,$00,$00,$50,$0D,$00,$00
	.byte $00,$B0,$05,$00,$00,$00,$B0,$02
	.byte $00,$00,$00,$60,$03,$00,$00,$00
	.byte $70,$02,$00,$00,$00,$A0,$00,$00
	.byte $00,$00,$90,$0E,$00,$00,$00,$10
	.byte $0E,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$01,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$FF
level2_r12c_e:
	.byte $48,$B0,$81,$00
	.byte $FF
level2_r12c_t:
	.byte $28,$30,$BE,$FE,$FE,$F1,$5B,$59
	.byte $E1,$57,$59,$E1,$57,$5C,$5C,$E4
	.byte $F0,$60,$55,$55,$54,$54,$55,$54
	.byte $55,$54,$55,$62,$E3,$EE,$60,$55
	.byte $4B,$A8,$3F,$4C,$59,$E1,$5C,$ED
	.byte $60,$4B,$AA,$E2,$00,$60,$54,$EC
	.byte $56,$4F,$AB,$E1,$49,$62,$4B,$00
	.byte $EC,$59,$51,$EB,$00,$3F,$67,$A2
	.byte $EC,$5C,$EE,$C1,$E5,$E2,$FB,$67
	.byte $E2,$EC,$00,$4F,$F0,$FB,$65,$E2
	.byte $EC,$56,$50,$E5,$3F,$C1,$A9,$8F
	.byte $88,$89,$8A,$8B,$8C,$8D,$8E,$8F
	.byte $EC,$5D,$4F,$E6,$9C,$84,$78,$7C
	.byte $80,$84,$78,$7C,$80,$84,$EC,$56
	.byte $E7,$9D,$85,$79,$7D,$81,$85,$79
	.byte $7D,$81,$85,$EC,$5A,$51,$E6,$9E
	.byte $86,$7A,$7E,$82,$86,$7A,$7E,$82
	.byte $86,$EC,$58,$E7,$9F,$87,$7B,$7F
	.byte $83,$87,$7B,$7F,$83,$87,$EC,$56
	.byte $50,$E6,$C1,$AA,$97,$90,$91,$92
	.byte $93,$94,$95,$96,$97,$EC,$00,$61
	.byte $46,$E5,$64,$A9,$ED,$00,$61,$53
	.byte $46,$E3,$67,$E9,$EE,$00,$59,$61
	.byte $53,$52,$53,$50,$E9,$EF,$A2,$5D
	.byte $59,$00,$4F,$E9,$F1,$A2,$59,$51
	.byte $E9,$F3,$00,$50,$E9,$F4,$61,$46
	.byte $E8,$F4,$00,$61,$52,$46,$E6,$F5
	.byte $A2,$61,$53,$52,$52,$53,$53,$52
	.byte $F7,$00,$5C,$57,$57,$5C,$00,$5C
	.byte $F8,$A6,$FE,$FE,$FE,$FE,$FE,$FE
	.byte $FE,$FE,$FE,$FE,$BE,$FE,$FE,$FE
	.byte $E2,$5A,$5A,$56,$57,$57,$E1,$58
	.byte $E2,$5C,$58,$E1,$57,$5B,$59,$5C
	.byte $5B,$EB,$60,$C3,$54,$55,$C9,$54
	.byte $55,$C3,$54,$55,$62,$EA,$4B,$B1
	.byte $3F,$4D,$5C,$E9,$B2,$E1,$4E,$EA
	.byte $F4,$59,$E9,$F1,$3F,$44,$63,$AA
	.byte $F2,$4C,$56,$EA,$F2,$4D,$58,$EA
	.byte $F2,$4E,$00,$5D,$5A,$5C,$59,$E2
	.byte $5C,$5B,$5D,$E1,$88,$89,$8A,$8B
	.byte $8C,$8D,$8E,$8F,$88,$89,$8A,$8B
	.byte $8C,$8D,$8E,$C1,$AC,$C1,$E4,$66
	.byte $55,$55,$54,$54,$55,$55,$54,$55
	.byte $54,$55,$55,$54,$78,$7C,$80,$84
	.byte $78,$7C,$80,$84,$78,$7C,$80,$84
	.byte $78,$7C,$80,$C1,$A4,$AE,$79,$7D
	.byte $81,$85,$79,$7D,$81,$85,$79,$7D
	.byte $81,$85,$79,$7D,$81,$C1,$A5,$EE
	.byte $7A,$7E,$82,$86,$7A,$7E,$82,$86
	.byte $7A,$7E,$82,$86,$7A,$7E,$82,$C1
	.byte $A6,$E9,$3C,$E4,$7B,$7F,$83,$87
	.byte $7B,$7F,$83,$87,$7B,$7F,$83,$87
	.byte $7B,$7F,$83,$C1,$A7,$E9,$3E,$E4
	.byte $90,$91,$92,$93,$94,$95,$96,$97
	.byte $90,$91,$92,$93,$94,$95,$96,$C1
	.byte $AF,$E9,$48,$53,$52,$53,$53,$A4
	.byte $3F,$48,$52,$53,$53,$52,$46,$AE
	.byte $4C,$00,$59,$A2,$E5,$4C,$5C,$56
	.byte $5B,$00,$4F,$EE,$4E,$5C,$A3,$E5
	.byte $4E,$E1,$A3,$51,$EE,$4C,$A4,$E5
	.byte $4C,$56,$E2,$56,$4F,$EF,$58,$E3
	.byte $E5,$4D,$59,$E2,$5C,$51,$EE,$4D
	.byte $56,$E3,$E3,$3F,$44,$63,$A3,$5B
	.byte $50,$EE,$4C,$59,$E3,$E4,$4C,$5C
	.byte $E3,$5A,$51,$EE,$4D,$57,$E3,$E5
	.byte $56,$E3,$57,$50,$EE,$4C,$E4,$C3
	.byte $53,$52,$63,$A4,$5A,$4F,$ED,$48
	.byte $63,$A4,$00,$58,$00,$56,$A6,$EE
	.byte $4C,$A5,$E1,$A9,$61,$46,$EC,$4E
	.byte $E5,$EA,$00,$61,$52,$46,$F0,$EB
	.byte $00,$59,$61,$52,$53,$C3,$52,$53
	.byte $52,$53,$52,$52,$63,$E5,$EC,$A2
	.byte $56,$5B,$57,$59,$5B,$59,$57,$5B
	.byte $00,$5A,$A6,$EE,$B0,$FE,$FE,$FE
	.byte $FE,$FE,$FE,$FF
level2_r12c:
	.byte 40, 15
	.byte 255, 88, 255, 255
	.byte 0, 252, 0, 0
	.byte 0
	.byte 255
	.word level2_r12c_t
	.word level2_r12c_p
	.word level2_r12c_e
level2_r12_p:
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$0A,$00
	.byte $00,$00,$00,$48,$08,$00,$AA,$00
	.byte $00,$00,$00,$00,$00,$00,$AA,$00
	.byte $00,$76,$00,$00,$00,$00,$0A,$00
	.byte $00,$22,$00,$00,$00,$00,$06,$00
	.byte $00,$00,$00,$00,$00,$00,$45,$00
	.byte $00,$00,$00,$00,$40,$00,$55,$00
	.byte $00,$00,$00,$00,$C4,$00,$AA,$00
	.byte $00,$00,$00,$00,$32,$00,$AA,$00
	.byte $00,$00,$20,$22,$00,$00,$AA,$00
	.byte $00,$00,$00,$00,$00,$00,$0A,$00
	.byte $FE,$00,$00,$00,$00,$00,$A0,$0A
	.byte $00,$FE,$FF
level2_r12_e:
	.byte $FF
level2_r12_t:
	.byte $D6,$23,$2D,$C6,$96,$21,$87,$96
	.byte $23,$2E,$86,$96,$1E,$36,$86,$96
	.byte $00,$21,$33,$85,$98,$2B,$85,$97
	.byte $23,$33,$85,$97,$1E,$29,$36,$84
	.byte $97,$00,$00,$22,$32,$83,$8C,$E4
	.byte $E4,$66,$66,$5E,$8A,$2D,$83,$8C
	.byte $E5,$A8,$8D,$8E,$8F,$AC,$88,$21
	.byte $2C,$83,$8C,$E5,$9B,$7F,$83,$87
	.byte $A3,$88,$22,$2E,$83,$8C,$E5,$AA
	.byte $95,$96,$97,$AE,$88,$23,$2B,$83
	.byte $8C,$44,$52,$52,$52,$46,$88,$21
	.byte $2E,$83,$8C,$4C,$00,$00,$60,$4B
	.byte $88,$22,$32,$83,$8C,$4D,$58,$00
	.byte $4F,$C8,$1D,$37,$C4,$85,$EA,$A9
	.byte $8E,$8F,$AC,$44,$52,$52,$63,$00
	.byte $00,$89,$22,$33,$84,$85,$EB,$99
	.byte $81,$85,$A1,$4D,$5C,$5B,$00,$00
	.byte $60,$4B,$89,$32,$84,$85,$EA,$9A
	.byte $82,$86,$A2,$4D,$00,$00,$00,$59
	.byte $4F,$C9,$21,$33,$84,$85,$E6,$9B
	.byte $83,$87,$A3,$4C,$58,$82,$58,$8B
	.byte $2E,$84,$85,$EA,$9C,$80,$84,$A4
	.byte $4C,$5B,$60,$55,$54,$4B,$8A,$33
	.byte $84,$85,$E7,$AA,$96,$97,$AF,$49
	.byte $54,$4B,$CC,$23,$2E,$84,$85,$D1
	.byte $44,$53,$3B,$C5,$93,$48,$52,$52
	.byte $63,$C7,$92,$44,$63,$59,$59,$5D
	.byte $5A,$86,$92,$45,$55,$55,$54,$54
	.byte $55,$12,$3A,$84,$92,$C7,$05,$18
	.byte $83,$99,$07,$14,$83,$9E,$99,$05
	.byte $15,$83,$87,$48,$52,$52,$46,$8F
	.byte $13,$83,$87,$ED,$4E,$00,$00,$61
	.byte $52,$52,$53,$52,$4A,$A9,$89,$8A
	.byte $AC,$8A,$87,$ED,$4C,$56,$00,$00
	.byte $00,$5A,$00,$59,$50,$98,$7C,$80
	.byte $A0,$85,$22,$30,$83,$85,$44,$53
	.byte $63,$C6,$E6,$5D,$51,$99,$7D,$81
	.byte $A1,$85,$21,$2D,$83,$85,$4D,$5A
	.byte $C7,$E6,$5A,$4F,$9A,$7E,$82,$A2
	.byte $85,$22,$84,$85,$4C,$00,$58,$5C
	.byte $5C,$58,$83,$E6,$00,$50,$9B,$7F
	.byte $83,$A3,$85,$21,$30,$83,$85,$4D
	.byte $5C,$60,$55,$54,$54,$62,$84,$E4
	.byte $AA,$91,$92,$AF,$86,$2D,$83,$85
	.byte $45,$55,$47,$00,$00,$00,$4D,$5A
	.byte $83,$C9,$22,$31,$83,$85,$C6,$49
	.byte $54,$55,$55,$4B,$89,$23,$30,$83
	.byte $8B,$E5,$A8,$8C,$8D,$8E,$AC,$89
	.byte $22,$32,$83,$8B,$E5,$98,$78,$7C
	.byte $80,$A0,$8A,$2F,$83,$8B,$E5,$AA
	.byte $94,$95,$96,$AE,$8E,$8B,$48,$53
	.byte $53,$52,$53,$53,$53,$52,$52,$46
	.byte $84,$21,$33,$83,$8B,$49,$55,$55
	.byte $62,$00,$00,$00,$60,$54,$47,$84
	.byte $23,$2F,$83,$8B,$00,$00,$00,$4E
	.byte $82,$60,$4B,$C5,$1D,$37,$C4,$8E
	.byte $4D,$5B,$59,$51,$C6,$21,$2F,$84
	.byte $8E,$45,$54,$55,$4B,$86,$23,$33
	.byte $84,$8E,$CA,$22,$31,$84,$99,$32
	.byte $84,$98,$21,$2C,$84,$99,$2F,$84
	.byte $98,$22,$2C,$84,$96,$1D,$28,$37
	.byte $C5,$96,$23,$2B,$2E,$85,$96,$21
	.byte $2D,$30,$85,$96,$23,$2F,$2F,$85
	.byte $97,$2E,$2C,$85,$97,$31,$2D,$85
	.byte $96,$21,$31,$30,$85,$96,$23,$30
	.byte $33,$85,$FF
level2_r12:
	.byte 60, 0
	.byte 255, 255, 89, 90
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r12_t
	.word level2_r12_p
	.word level2_r12_e
level2_end_chase_p:
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$08,$00
	.byte $00,$00,$00,$00,$00,$00,$02,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$80,$00,$00
	.byte $00,$00,$00,$AA,$AA,$AA,$00,$00
	.byte $FE,$00,$00,$00,$22,$22,$A2,$00
	.byte $00,$00,$00,$00,$00,$00,$A0,$00
	.byte $00,$FE,$FF
level2_end_chase_e:
	.byte $FF
level2_end_chase_t:
	.byte $D6,$22,$33,$C6,$97,$32,$86,$96
	.byte $23,$2E,$86,$96,$22,$87,$96,$23
	.byte $2B,$86,$96,$1E,$36,$86,$96,$00
	.byte $22,$30,$85,$97,$23,$2F,$85,$97
	.byte $4E,$86,$97,$4C,$2B,$85,$95,$44
	.byte $52,$63,$C6,$95,$4D,$5C,$C7,$93
	.byte $48,$52,$63,$C8,$93,$4C,$5D,$C9
	.byte $93,$45,$62,$5B,$88,$93,$00,$45
	.byte $54,$62,$87,$94,$00,$00,$4D,$59
	.byte $86,$97,$5C,$86,$96,$21,$2B,$86
	.byte $96,$22,$2E,$86,$8D,$A9,$F0,$23
	.byte $2F,$86,$96,$21,$2E,$86,$96,$23
	.byte $32,$86,$97,$2D,$86,$96,$21,$32
	.byte $86,$9E,$96,$23,$2F,$86,$96,$22
	.byte $2B,$86,$97,$33,$86,$97,$2D,$86
	.byte $8D,$C9,$21,$2C,$86,$96,$22,$33
	.byte $86,$96,$21,$2E,$86,$97,$32,$86
	.byte $97,$30,$86,$97,$33,$86,$97,$31
	.byte $86,$96,$22,$2D,$86,$96,$21,$32
	.byte $86,$97,$33,$86,$FF
level2_end_chase:
	.byte 40, 0
	.byte 255, 255, 91, 255
	.byte 0, 0, 0, 0
	.byte 8
	.byte 255
	.word level2_end_chase_t
	.word level2_end_chase_p
	.word level2_end_chase_e
