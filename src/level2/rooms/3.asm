level2_r1_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$00,$00,$00,$AA,$00
	.byte $00,$00,$00,$00,$00,$10,$22,$00
	.byte $00,$00,$00,$00,$00,$00,$33,$3F
	.byte $03,$00,$00,$00,$00,$00,$30,$33
	.byte $03,$00,$00,$00,$00,$00,$03,$00
	.byte $00,$00,$00,$00,$00,$00,$A1,$0A
	.byte $00,$00,$00,$00,$00,$00,$A0,$0A
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FF
level2_r1_e:
	.byte $FF
level2_r1_t:
	.byte $57,$4F,$C4,$4E,$59,$A7,$EE,$5A
	.byte $51,$C4,$4D,$A8,$EE,$57,$50,$85
	.byte $58,$83,$E6,$59,$57,$57,$56,$EE
	.byte $4F,$84,$4C,$88,$57,$4F,$84,$4D
	.byte $56,$83,$60,$55,$55,$55,$54,$4B
	.byte $85,$58,$87,$54,$4B,$84,$4C,$83
	.byte $5B,$50,$C9,$4C,$59,$87,$C6,$4D
	.byte $83,$E2,$EE,$4F,$89,$4E,$5A,$87
	.byte $87,$57,$82,$60,$4B,$92,$86,$4C
	.byte $83,$50,$CA,$4C,$58,$87,$86,$E5
	.byte $4D,$5D,$EE,$5A,$51,$8A,$4D,$5B
	.byte $87,$53,$53,$52,$53,$52,$53,$63
	.byte $A3,$EE,$50,$8A,$21,$A8,$EE,$58
	.byte $5D,$5D,$A2,$EE,$58,$A3,$EE,$5B
	.byte $8B,$22,$2C,$87,$A9,$EE,$5A,$8C
	.byte $2F,$87,$89,$E2,$EE,$51,$8A,$23
	.byte $88,$89,$59,$50,$88,$3C,$00,$21
	.byte $31,$87,$89,$5D,$4F,$88,$3E,$00
	.byte $23,$A8,$EE,$8A,$50,$87,$48,$53
	.byte $52,$63,$88,$89,$57,$88,$EC,$4D
	.byte $EE,$59,$5B,$58,$56,$57,$56,$EE
	.byte $5C,$56,$57,$89,$56,$51,$87,$E5
	.byte $49,$55,$C2,$C5,$C3,$A3,$C5,$E4
	.byte $CA,$C2,$C5,$C4,$89,$5A,$4F,$87
	.byte $CC,$89,$E2,$EE,$51,$93,$89,$5A
	.byte $4F,$8D,$E1,$EB,$85,$89,$E1,$EE
	.byte $8E,$E1,$ED,$85,$89,$5B,$51,$8B
	.byte $E6,$B1,$C1,$BF,$BF,$BE,$C0,$A2
	.byte $BE,$89,$E2,$EE,$50,$89,$48,$52
	.byte $63,$59,$5B,$5B,$58,$57,$57,$56
	.byte $8A,$61,$52,$53,$4A,$86,$4E,$5C
	.byte $A8,$EE,$8A,$57,$5B,$5C,$50,$86
	.byte $E2,$B9,$DD,$88,$8A,$60,$54,$55
	.byte $47,$86,$E2,$B8,$DE,$88,$89,$57
	.byte $4F,$C9,$E4,$4D,$EE,$59,$59,$86
	.byte $89,$56,$51,$89,$49,$54,$54,$62
	.byte $86,$94,$00,$3D,$00,$23,$86,$89
	.byte $5C,$8B,$3C,$00,$21,$2C,$85,$89
	.byte $5A,$4F,$8A,$00,$00,$21,$32,$85
	.byte $89,$5D,$8E,$2E,$85,$98,$30,$85
	.byte $89,$5C,$50,$8D,$2F,$85,$89,$E2
	.byte $EE,$4F,$8D,$2D,$85,$8A,$50,$8C
	.byte $23,$A6,$EE,$8A,$51,$8C,$4C,$86
	.byte $8A,$50,$93,$8A,$61,$52,$53,$46
	.byte $89,$4E,$5D,$85,$8A,$E8,$EE,$56
	.byte $5A,$61,$53,$53,$52,$4A,$86,$5B
	.byte $85,$FF
level2_r1:
	.byte 40, 0
	.byte 12, 10, 9, 11
	.byte 0, 0, 0, 0
	.byte 32
	.byte 255
	.word level2_r1_t
	.word level2_r1_p
	.word level2_r1_e
level2_r1b_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$04,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$40,$08,$00,$00,$00
	.byte $00,$00,$00,$30,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$C0,$00,$00
	.byte $00,$00,$00,$00,$00,$33,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FF
level2_r1b_e:
	.byte $FE
	.byte $20,$60,$01,$08
	.byte $FF
level2_r1b_t:
	.byte $CA,$59,$5A,$58,$5B,$56,$CF,$8A
	.byte $60,$55,$55,$54,$54,$62,$00,$57
	.byte $8C,$89,$5C,$51,$C4,$45,$54,$55
	.byte $62,$82,$5A,$5C,$57,$57,$5D,$57
	.byte $82,$56,$89,$60,$47,$84,$00,$00
	.byte $00,$49,$54,$54,$55,$55,$55,$A4
	.byte $54,$55,$54,$88,$5B,$51,$D4,$88
	.byte $5A,$50,$94,$88,$59,$51,$8A,$3C
	.byte $89,$88,$00,$50,$8A,$3E,$89,$94
	.byte $48,$52,$52,$52,$53,$53,$53,$52
	.byte $53,$52,$88,$5B,$8B,$4E,$00,$5B
	.byte $5A,$59,$59,$57,$00,$5B,$5B,$88
	.byte $56,$4F,$86,$48,$53,$52,$53,$63
	.byte $C9,$88,$5B,$87,$4C,$00,$58,$00
	.byte $00,$59,$00,$56,$86,$88,$5A,$51
	.byte $86,$45,$54,$55,$55,$54,$54,$54
	.byte $55,$62,$85,$87,$60,$54,$4B,$86
	.byte $C7,$3F,$4E,$56,$84,$86,$58,$51
	.byte $CF,$82,$C5,$86,$5B,$91,$49,$62
	.byte $84,$86,$5C,$50,$8F,$00,$3F,$4E
	.byte $5C,$83,$86,$56,$51,$92,$5B,$83
	.byte $86,$E8,$00,$61,$4A,$A9,$8A,$8B
	.byte $8C,$AD,$8B,$4C,$5D,$83,$87,$E7
	.byte $5A,$4F,$9B,$83,$87,$7B,$A3,$8C
	.byte $57,$83,$87,$E7,$56,$51,$9C,$80
	.byte $84,$78,$A4,$8B,$4D,$C4,$87,$E7
	.byte $5C,$50,$AA,$92,$93,$94,$AE,$8B
	.byte $4C,$5A,$83,$87,$59,$50,$CF,$3F
	.byte $4E,$57,$83,$87,$57,$4F,$90,$4C
	.byte $5D,$83,$87,$5C,$50,$90,$4D,$59
	.byte $83,$87,$56,$8F,$3F,$44,$63,$C4
	.byte $87,$5B,$51,$8F,$4E,$58,$84,$87
	.byte $5C,$50,$8F,$4D,$5D,$84,$87,$56
	.byte $51,$90,$5A,$84,$87,$5C,$4F,$90
	.byte $56,$84,$87,$00,$61,$A4,$53,$E7
	.byte $52,$46,$A9,$88,$89,$8A,$AD,$82
	.byte $3F,$48,$63,$5A,$84,$88,$EC,$00
	.byte $5C,$5B,$00,$5A,$58,$51,$9F,$7B
	.byte $7F,$83,$A7,$83,$4E,$C6,$8A,$EA
	.byte $5C,$58,$00,$5B,$50,$98,$78,$7C
	.byte $80,$A0,$83,$4D,$5D,$85,$89,$EB
	.byte $60,$54,$54,$54,$55,$47,$AA,$90
	.byte $91,$92,$AE,$84,$C6,$89,$50,$CC
	.byte $88,$97,$45,$62,$85,$89,$51,$8C
	.byte $00,$3F,$4E,$5B,$84,$89,$61,$4A
	.byte $8D,$4C,$5C,$84,$89,$5C,$50,$8D
	.byte $4E,$85,$89,$00,$61,$53,$A4,$52
	.byte $53,$53,$52,$52,$A4,$53,$63,$C5
	.byte $FF
level2_r1b:
	.byte 40, 0
	.byte 255, 25, 255, 255
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r1b_t
	.word level2_r1b_p
	.word level2_r1b_e
level2_d0a_p:
	.byte $B7,$33,$F3,$FD,$FF,$33,$33,$33
	.byte $03,$00,$00,$F0,$03,$00,$00,$00
	.byte $00,$00,$CC,$00,$00,$00,$00,$00
	.byte $00,$0C,$C3,$CF,$00,$00,$00,$00
	.byte $00,$F3,$50,$F1,$CC,$CC,$CC,$00
	.byte $00,$30,$9F,$F9,$03,$00,$00,$00
	.byte $00,$00,$E0,$3C,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$C0
	.byte $0C,$00,$00,$00,$05,$00,$FA,$BB
	.byte $0B,$CC,$00,$00,$3F,$33,$33,$33
	.byte $03,$FF
level2_d0a_e:
	.byte $FF
level2_d0a_t:
	.byte $E2,$C2,$C3,$A2,$C2,$F6,$C3,$C2
	.byte $C3,$C4,$C5,$C2,$C3,$C8,$E3,$DE
	.byte $DF,$DC,$DD,$DC,$E0,$E2,$E0,$E3
	.byte $DD,$C6,$C3,$C4,$A2,$C5,$A2,$C4
	.byte $E4,$88,$89,$8A,$AC,$C7,$E5,$B9
	.byte $DC,$DF,$DF,$C6,$A2,$C4,$E1,$C3
	.byte $A4,$C5,$E1,$B7,$C6,$E4,$82,$7E
	.byte $82,$A2,$88,$E1,$C6,$A2,$C5,$E1
	.byte $B7,$CE,$E4,$90,$91,$92,$AE,$88
	.byte $E1,$BB,$D1,$CB,$E2,$BA,$B6,$91
	.byte $8B,$E1,$D9,$D2,$8B,$E1,$D6,$92
	.byte $8B,$D3,$9E,$9E,$84,$E2,$B1,$B4
	.byte $98,$84,$E6,$B9,$BD,$A9,$8F,$88
	.byte $AC,$94,$84,$E6,$B3,$B6,$9C,$84
	.byte $78,$A4,$94,$84,$E6,$00,$00,$9D
	.byte $85,$79,$A5,$94,$86,$E4,$9E,$86
	.byte $7A,$A6,$94,$E1,$B4,$85,$E5,$9F
	.byte $87,$7B,$A7,$D3,$93,$E1,$C2,$A2
	.byte $CB,$E1,$D1,$82,$E6,$98,$84,$78
	.byte $A0,$B8,$B5,$92,$E4,$00,$00,$00
	.byte $EC,$82,$E6,$99,$85,$79,$A1,$B9
	.byte $BB,$92,$83,$E1,$EB,$82,$E8,$9A
	.byte $86,$7A,$A2,$B9,$C7,$C0,$BF,$A2
	.byte $C1,$E4,$C0,$BE,$BF,$B5,$8A,$83
	.byte $E1,$ED,$82,$EE,$9B,$87,$7B,$A3
	.byte $BA,$DF,$E2,$C6,$C2,$C4,$C2,$C3
	.byte $C2,$C4,$A2,$CB,$E1,$D2,$87,$83
	.byte $EB,$CF,$BF,$B4,$9C,$84,$78,$A4
	.byte $B9,$C6,$C2,$B6,$D0,$83,$E9,$00
	.byte $B8,$BD,$9D,$85,$79,$A5,$B8,$BB
	.byte $D2,$84,$E8,$B2,$BB,$9E,$86,$7A
	.byte $A6,$BA,$B7,$92,$84,$E7,$00,$D6
	.byte $9F,$87,$7B,$A7,$DB,$D3,$85,$E6
	.byte $00,$98,$84,$78,$A0,$D9,$93,$86
	.byte $E5,$99,$85,$79,$A1,$D8,$93,$86
	.byte $E4,$9A,$86,$7A,$A2,$D4,$86,$E4
	.byte $AB,$97,$90,$AE,$94,$86,$D8,$9E
	.byte $9E,$9B,$E3,$B0,$C1,$BE,$8C,$3C
	.byte $8A,$E2,$CD,$CA,$A2,$CB,$E3,$C2
	.byte $C4,$C3,$95,$E9,$A8,$8E,$8F,$88
	.byte $89,$8A,$8B,$8C,$8D,$95,$E9,$9A
	.byte $82,$86,$7A,$7E,$82,$86,$7A,$7B
	.byte $8C,$3E,$88,$E9,$AA,$96,$97,$90
	.byte $91,$92,$93,$94,$95,$8C,$E2,$B1
	.byte $BF,$A2,$BE,$A2,$C1,$A2,$BE,$E6
	.byte $C0,$C0,$C0,$C1,$BF,$C0,$A2,$BE
	.byte $E2,$C1,$C0,$8C,$EA,$B9,$E2,$E0
	.byte $E2,$DD,$E3,$E1,$DE,$DD,$E2,$A2
	.byte $DC,$E6,$DD,$E1,$DD,$DE,$E2,$DD
	.byte $E3,$BF,$C1,$B5,$8A,$E1,$E3,$D0
	.byte $E3,$DE,$DD,$BD,$89,$E2,$B8,$DD
	.byte $90,$FF
level2_d0a:
	.byte 40, 128
	.byte 26, 28, 255, 27
	.byte 0, 0, 0, 20
	.byte 0
	.byte 0, 0, 0, 160
	.byte 0, 0, 0, 29
	.byte 0, 0, 0, 246
	.word level2_d0a_t
	.word level2_d0a_p
	.word level2_d0a_e
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
	.byte $68,$60,$01,$03
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
	.byte 255, 255, 255, 31
	.byte 0, 0, 0, 14
	.byte 4
	.byte 0, 0, 0, 112
	.byte 0, 0, 0, 30
	.byte 0, 0, 0, 240
	.word level2_d6_t
	.word level2_d6_p
	.word level2_d6_e
level2_r3_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$00,$00,$00,$00,$00,$00
	.byte $05,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$FE,$00,$00,$00,$84,$0C
	.byte $00,$00,$00,$00,$00,$30,$5F,$91
	.byte $A9,$08,$00,$00,$00,$00,$00,$00
	.byte $A0,$02,$00,$00,$00,$00,$04,$04
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$FF
level2_r3_e:
	.byte $20,$B0,$15,$04
	.byte $FF
level2_r3_t:
	.byte $DE,$9E,$92,$58,$00,$5B,$00,$5A
	.byte $5B,$86,$90,$58,$60,$54,$55,$54
	.byte $55,$55,$55,$62,$85,$8B,$57,$5D
	.byte $5C,$56,$60,$54,$4B,$C6,$4E,$58
	.byte $84,$87,$58,$00,$5C,$60,$54,$54
	.byte $55,$55,$47,$C8,$4E,$C5,$86,$60
	.byte $55,$55,$55,$4B,$CD,$4D,$5D,$84
	.byte $85,$60,$4B,$D1,$4E,$C5,$85,$4F
	.byte $D2,$86,$84,$59,$50,$92,$4C,$5A
	.byte $84,$84,$5A,$94,$5C,$58,$57,$5A
	.byte $5B,$84,$60,$4B,$92,$45,$54,$55
	.byte $55,$55,$54,$83,$57,$4F,$D3,$3D
	.byte $C5,$83,$5B,$94,$3C,$85,$83,$5D
	.byte $94,$3E,$85,$83,$00,$50,$8A,$44
	.byte $53,$4A,$86,$01,$0E,$53,$53,$53
	.byte $52,$84,$61,$53,$4A,$88,$45,$55
	.byte $55,$66,$5E,$84,$4D,$5C,$00,$5A
	.byte $59,$58,$84,$00,$00,$61,$46,$87
	.byte $C9,$4C,$5D,$C4,$85,$59,$57,$4F
	.byte $90,$4E,$58,$84,$86,$60,$47,$91
	.byte $C5,$85,$5D,$4F,$D1,$4D,$85,$85
	.byte $58,$50,$8C,$48,$53,$53,$52,$52
	.byte $63,$85,$85,$5B,$4F,$8C,$4E,$C4
	.byte $5D,$85,$85,$5A,$50,$8C,$45,$55
	.byte $55,$54,$55,$55,$62,$84,$85,$00
	.byte $61,$52,$53,$53,$52,$46,$87,$C5
	.byte $3F,$4D,$5A,$83,$86,$00,$5D,$5D
	.byte $5B,$5C,$4F,$8D,$4C,$C4,$87,$00
	.byte $00,$60,$54,$4B,$92,$89,$F1,$51
	.byte $A9,$8B,$8C,$8D,$8E,$8F,$88,$89
	.byte $8A,$8B,$8C,$AC,$48,$52,$52,$63
	.byte $84,$88,$F1,$5B,$51,$9C,$84,$78
	.byte $7C,$80,$84,$78,$7C,$80,$84,$78
	.byte $A4,$21,$33,$5A,$C5,$88,$F0,$5C
	.byte $4F,$9D,$85,$79,$7D,$81,$85,$79
	.byte $7D,$81,$85,$79,$A5,$23,$33,$C6
	.byte $88,$F0,$57,$4F,$AA,$93,$94,$95
	.byte $96,$97,$90,$91,$92,$93,$94,$AF
	.byte $1E,$36,$86,$88,$00,$61,$4A,$CB
	.byte $74,$21,$2B,$85,$89,$60,$4B,$8C
	.byte $23,$31,$85,$88,$59,$4F,$CC,$74
	.byte $21,$2E,$85,$88,$60,$47,$8D,$1E
	.byte $62,$85,$00,$5D,$5C,$5B,$82,$5C
	.byte $00,$50,$CE,$74,$4E,$85,$54,$55
	.byte $54,$55,$55,$54,$55,$54,$47,$8E
	.byte $3F,$4E,$56,$84,$D7,$3F,$4C,$5C
	.byte $84,$8C,$3C,$8B,$4E,$C5,$8C,$3E
	.byte $84,$3E,$86,$4C,$57,$84,$8C,$44
	.byte $52,$52,$53,$A4,$52,$53,$52,$53
	.byte $52,$63,$C5,$52,$52,$53,$52,$53
	.byte $52,$53,$52,$52,$53,$52,$52,$63
	.byte $5A,$5C,$58,$56,$00,$5C,$57,$5D
	.byte $00,$00,$5C,$C6,$5D,$58,$59,$5A
	.byte $5A,$59,$00,$59,$00,$59,$56,$57
	.byte $D2,$DE,$FF
level2_r3:
	.byte 44, 0
	.byte 32, 255, 255, 255
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r3_t
	.word level2_r3_p
	.word level2_r3_e
level2_d7_p:
	.byte $FD,$FF,$FD,$FF,$00,$0F,$00,$C0
	.byte $FD,$FF,$0F,$C0,$CC,$00,$CF,$00
	.byte $F0,$0F,$00,$F0,$FD,$FF,$00,$FD
	.byte $FF,$00,$FD,$FF,$00,$00,$CC,$0C
	.byte $00,$FD,$FF,$00,$FD,$FF,$00,$00
	.byte $FD,$FF,$0F,$00,$FD,$FF,$00,$FD
	.byte $FF,$00,$03,$00,$00,$00,$FD,$FF
	.byte $00,$F3,$0F,$00,$F0,$FD,$FF,$0F
	.byte $FD,$FF,$00,$F0,$0F,$00,$00,$00
	.byte $00,$FD,$FF,$00,$F0,$0F,$00,$00
	.byte $00,$D0,$FD,$FF,$00,$F0,$0F,$00
	.byte $FD,$FF,$CC,$00,$0F,$00,$00,$FD
	.byte $FF,$0F,$FF
level2_d7_e:
	.byte $60,$68,$7F
	.byte $A0,$58,$7F
	.byte $FF
level2_d7_t:
	.byte $C5,$E1,$E1,$A2,$DC,$E0,$C6,$E3
	.byte $E0,$E0,$BD,$C4,$E2,$B9,$E1,$C6
	.byte $84,$E1,$C6,$A2,$C4,$EB,$C3,$C4
	.byte $C8,$DE,$E0,$DC,$E0,$C6,$C3,$C4
	.byte $B7,$84,$E2,$BA,$E0,$86,$83,$E2
	.byte $DD,$BB,$A4,$E8,$E6,$B3,$C4,$C5
	.byte $C3,$C2,$B7,$A3,$E8,$84,$E2,$B8
	.byte $E3,$86,$83,$E2,$C6,$B6,$D1,$E1
	.byte $BA,$87,$82,$E3,$E3,$BC,$E9,$91
	.byte $E2,$B3,$C8,$86,$82,$E2,$DE,$BB
	.byte $92,$E2,$E7,$B8,$86,$82,$E2,$E3
	.byte $BC,$93,$E2,$B9,$E0,$85,$82,$E2
	.byte $C6,$B7,$89,$A4,$EA,$86,$E2,$BA
	.byte $E1,$85,$E4,$00,$E3,$BC,$E9,$C8
	.byte $E6,$E7,$B0,$BE,$C0,$B5,$E9,$85
	.byte $E2,$B9,$E2,$85,$E3,$00,$DE,$BD
	.byte $8A,$E4,$B2,$C5,$C2,$B7,$86,$E1
	.byte $B8,$86,$82,$E1,$BC,$89,$00,$A4
	.byte $E8,$C5,$82,$DF,$85,$E3,$00,$DC
	.byte $BD,$8A,$C9,$E3,$E7,$B2,$C8,$85
	.byte $E2,$00,$E1,$94,$E4,$00,$E7,$B8
	.byte $DD,$84,$E3,$00,$DD,$BC,$95,$E2
	.byte $BA,$E3,$84,$E3,$00,$DE,$BB,$95
	.byte $E2,$B9,$E2,$84,$E3,$00,$DC,$BC
	.byte $87,$A5,$EA,$89,$E2,$B8,$DD,$84
	.byte $E3,$00,$DD,$BB,$86,$E7,$E7,$B1
	.byte $BF,$BE,$C0,$B4,$E9,$88,$E2,$B9
	.byte $DE,$84,$E3,$00,$E2,$BD,$87,$E2
	.byte $B3,$C4,$A2,$C5,$E1,$B7,$89,$E2
	.byte $BA,$DC,$84,$89,$00,$A5,$E8,$C8
	.byte $82,$DF,$84,$E2,$00,$DE,$88,$CC
	.byte $E3,$E7,$B0,$C9,$C5,$E3,$00,$E1
	.byte $BB,$94,$E2,$BA,$DF,$85,$E6,$00
	.byte $00,$C7,$C1,$B4,$E9,$91,$E2,$B9
	.byte $DD,$85,$82,$E3,$00,$E3,$BC,$93
	.byte $E0,$85,$83,$E1,$DE,$93,$E1,$B8
	.byte $86,$83,$E2,$E1,$BB,$87,$E2,$E7
	.byte $B1,$A2,$BE,$E4,$C0,$C0,$B4,$E9
	.byte $83,$E1,$B9,$86,$83,$E2,$DF,$BD
	.byte $88,$E2,$B3,$C3,$A2,$C2,$E2,$C4
	.byte $B7,$84,$E2,$B8,$DE,$85,$83,$E1
	.byte $DE,$88,$00,$A6,$E8,$E6,$00,$00
	.byte $00,$E7,$B9,$E1,$85,$83,$E2,$C6
	.byte $B7,$88,$C9,$E3,$E7,$BA,$DF,$85
	.byte $82,$E3,$E1,$BC,$E9,$D1,$E3,$E7
	.byte $B2,$C8,$85,$82,$E2,$E3,$BD,$92
	.byte $E4,$00,$E7,$B8,$E1,$84,$82,$E2
	.byte $E0,$BC,$95,$E0,$84,$82,$E2,$E1
	.byte $BD,$95,$E1,$DE,$84,$83,$E1,$BB
	.byte $94,$E2,$BA,$DF,$84,$82,$E2,$DD
	.byte $BC,$91,$3E,$82,$E2,$B8,$E0,$84
	.byte $82,$E1,$E2,$92,$E4,$B1,$C0,$C0
	.byte $C9,$C5,$82,$E4,$00,$C7,$BE,$B5
	.byte $8F,$E2,$B2,$C8,$C7,$83,$E3,$00
	.byte $DD,$BB,$8F,$E3,$00,$B8,$E1,$86
	.byte $84,$E2,$DE,$BB,$A7,$EA,$89,$E2
	.byte $BA,$E3,$86,$84,$E9,$00,$C7,$C1
	.byte $C0,$BE,$C1,$BE,$BF,$B5,$89,$E2
	.byte $B8,$DD,$86,$85,$E5,$00,$DE,$E2
	.byte $E1,$DE,$A2,$E1,$E5,$C7,$C1,$BE
	.byte $C1,$B4,$85,$E1,$B9,$87,$FF
level2_d7:
	.byte 40, 0
	.byte 255, 255, 38, 39
	.byte 0, 0, 10, 0
	.byte 5
	.byte 0, 0, 80, 0
	.byte 0, 0, 37, 0
	.byte 0, 0, 236, 0
	.word level2_d7_t
	.word level2_d7_p
	.word level2_d7_e
level2_d0b_p:
	.byte $33,$03,$50,$0F,$00,$00,$00,$00
	.byte $00,$00,$50,$0F,$00,$00,$00,$00
	.byte $00,$00,$30,$F3,$0C,$00,$00,$00
	.byte $00,$00,$00,$FC,$CF,$CC,$CC,$00
	.byte $00,$00,$00,$B7,$3F,$F3,$3F,$0F
	.byte $00,$00,$00,$DF,$DD,$DC,$CE,$0F
	.byte $00,$00,$00,$F3,$33,$33,$33,$00
	.byte $CC,$0C,$00,$FC,$00,$00,$00,$00
	.byte $B7,$0B,$00,$05,$00,$00,$00,$00
	.byte $33,$F3,$FD,$FF,$0F,$00,$00,$00
	.byte $00,$FF
level2_d0b_e:
	.byte $FE
	.byte $28,$40,$11,$18,$20
	.byte $FF
level2_d0b_t:
	.byte $A2,$C4,$A2,$C3,$E1,$B7,$C6,$E2
	.byte $07,$E2,$D1,$CB,$E2,$06,$E3,$91
	.byte $8B,$E2,$05,$DE,$91,$8B,$07,$92
	.byte $8B,$E2,$05,$E3,$91,$8C,$E0,$91
	.byte $8C,$E1,$DD,$91,$8C,$E2,$E2,$E0
	.byte $90,$8B,$E4,$B3,$C2,$C5,$C8,$8F
	.byte $8B,$E5,$00,$00,$00,$BA,$E3,$8E
	.byte $8E,$E2,$B3,$C8,$8E,$8E,$E3,$00
	.byte $B8,$DC,$8D,$8F,$E2,$BA,$E3,$8D
	.byte $8F,$E2,$B9,$E1,$8D,$8D,$E3,$B1
	.byte $C1,$C9,$CE,$8D,$EF,$B9,$E2,$00
	.byte $E3,$DC,$DD,$E2,$E1,$E3,$DD,$E2
	.byte $DE,$DC,$E0,$DC,$82,$8D,$E3,$B2
	.byte $C5,$C4,$A4,$C2,$E4,$C4,$C3,$C4
	.byte $C3,$A2,$C2,$E4,$C3,$C5,$C8,$00
	.byte $8D,$F1,$A8,$8E,$8F,$88,$89,$8A
	.byte $8B,$8C,$8D,$8E,$8F,$AD,$00,$00
	.byte $00,$B9,$DC,$8D,$EC,$9A,$82,$86
	.byte $7A,$7E,$82,$86,$7A,$7E,$82,$86
	.byte $A2,$83,$E2,$B3,$C3,$8D,$EC,$9B
	.byte $83,$87,$7B,$7F,$83,$87,$7B,$7F
	.byte $83,$87,$A3,$83,$00,$00,$8D,$EC
	.byte $9C,$80,$84,$78,$7C,$80,$84,$78
	.byte $7C,$80,$84,$A4,$85,$8D,$EC,$9D
	.byte $81,$85,$79,$7D,$81,$85,$79,$7D
	.byte $81,$85,$A5,$83,$E2,$B1,$C0,$8D
	.byte $EC,$AB,$96,$97,$90,$91,$92,$93
	.byte $94,$95,$96,$97,$AE,$83,$E2,$BA
	.byte $E1,$8D,$F1,$B1,$BF,$BF,$BF,$C0
	.byte $C0,$BE,$C0,$BF,$BE,$C1,$C0,$C1
	.byte $C0,$BF,$C9,$00,$8D,$E6,$BA,$DF
	.byte $DE,$E2,$DF,$E3,$A3,$E2,$E0,$A2
	.byte $E1,$E5,$DC,$E3,$E1,$00,$00,$8D
	.byte $E2,$B2,$C8,$CF,$8D,$E3,$00,$B8
	.byte $E1,$8E,$8E,$E2,$BA,$DE,$8E,$8E
	.byte $E2,$B9,$DC,$8E,$8E,$E2,$BA,$DE
	.byte $8E,$84,$E1,$D3,$87,$E3,$B1,$C0
	.byte $C9,$CF,$E5,$C1,$BF,$C1,$BE,$BD
	.byte $87,$E2,$BA,$E2,$D0,$E5,$C3,$C4
	.byte $C3,$C4,$B7,$87,$07,$D1,$E6,$88
	.byte $89,$8A,$8B,$8C,$AC,$86,$06,$14
	.byte $90,$E6,$82,$7E,$82,$86,$7A,$A2
	.byte $87,$15,$90,$E6,$90,$91,$92,$93
	.byte $94,$AE,$87,$D1,$E8,$C1,$C0,$C0
	.byte $C1,$BE,$BF,$C0,$B5,$84,$E2,$B9
	.byte $E3,$90,$E5,$DF,$E3,$E2,$DC,$E3
	.byte $A2,$E1,$E7,$BD,$B1,$C0,$C1,$B5
	.byte $B9,$DD,$90,$C6,$E8,$DD,$BD,$BA
	.byte $E2,$DD,$BC,$BA,$E1,$90,$86,$E8
	.byte $E3,$BC,$B9,$E3,$E1,$BD,$B9,$DE
	.byte $90,$FF
level2_d0b:
	.byte 40, 128
	.byte 40, 43, 41, 42
	.byte 0, 16, 242, 246
	.byte 0
	.byte 255
	.word level2_d0b_t
	.word level2_d0b_p
	.word level2_d0b_e
level2_d2_p:
	.byte $FD,$FF,$00,$00,$0D,$00,$00,$00
	.byte $00,$03,$00,$00,$FD,$FF,$0C,$00
	.byte $C0,$0F,$00,$00,$00,$F3,$0F,$00
	.byte $F0,$0F,$00,$40,$C8,$F0,$0F,$00
	.byte $F0,$00,$00,$00,$7F,$F0,$0F,$00
	.byte $F0,$00,$00,$10,$01,$F0,$0F,$00
	.byte $30,$0F,$00,$00,$00,$FD,$FF,$03
	.byte $00,$00,$0F,$00,$00,$00,$FD,$FF
	.byte $00,$00,$F0,$0F,$00,$00,$00,$CF
	.byte $00,$00,$F0,$00,$00,$00,$00,$F0
	.byte $00,$00,$F0,$00,$FF
level2_d2_e:
	.byte $FF
level2_d2_t:
	.byte $CB,$E2,$E1,$BC,$C9,$05,$16,$C6
	.byte $8B,$E2,$E0,$BD,$89,$06,$C7,$8B
	.byte $E2,$C6,$B7,$89,$E1,$B8,$87,$8A
	.byte $E2,$E1,$BD,$CA,$E2,$B8,$DE,$86
	.byte $89,$E3,$C6,$C3,$B6,$8A,$E3,$B3
	.byte $C2,$C8,$85,$88,$E2,$C6,$B7,$CC
	.byte $E4,$EC,$E7,$B9,$DC,$84,$87,$E2
	.byte $E0,$BD,$CD,$E4,$EB,$E7,$B3,$C8
	.byte $84,$87,$E2,$E1,$BB,$8E,$E4,$00
	.byte $E7,$B9,$E3,$83,$87,$E2,$E2,$BC
	.byte $95,$87,$E0,$8E,$E5,$00,$00,$E7
	.byte $BA,$E2,$83,$87,$E2,$DC,$BD,$90
	.byte $E2,$B9,$DD,$83,$87,$E2,$C6,$B7
	.byte $90,$E2,$BA,$DC,$83,$86,$E2,$E3
	.byte $BC,$D0,$82,$E1,$E3,$83,$86,$E2
	.byte $E0,$BB,$92,$E0,$83,$86,$E2,$DF
	.byte $BC,$88,$E6,$A8,$8F,$88,$89,$8A
	.byte $AD,$83,$E2,$B9,$E1,$83,$86,$E2
	.byte $E2,$BB,$88,$E6,$9F,$87,$7B,$7F
	.byte $83,$A7,$84,$E1,$E3,$83,$87,$E1
	.byte $BC,$88,$E6,$98,$84,$78,$7C,$80
	.byte $A0,$84,$E1,$DD,$83,$86,$E1,$E3
	.byte $89,$E6,$99,$85,$79,$7D,$81,$A1
	.byte $83,$E2,$B8,$E3,$83,$86,$E2,$DE
	.byte $BD,$88,$E6,$9A,$86,$7A,$7E,$82
	.byte $A2,$83,$E2,$B9,$DD,$83,$86,$E2
	.byte $E2,$BB,$88,$E6,$9B,$87,$7B,$7F
	.byte $83,$A3,$83,$E2,$BA,$E0,$83,$86
	.byte $E3,$00,$C7,$B4,$87,$E6,$9C,$84
	.byte $78,$7C,$80,$A4,$84,$E1,$DE,$83
	.byte $87,$E2,$E1,$BB,$87,$E6,$AB,$97
	.byte $90,$91,$92,$AE,$83,$E2,$B9,$DD
	.byte $83,$87,$E3,$00,$C7,$B5,$86,$C8
	.byte $E3,$E7,$BA,$DF,$83,$88,$E2,$E1
	.byte $BB,$8F,$E2,$B9,$E2,$83,$88,$E2
	.byte $E0,$BC,$90,$E1,$E1,$83,$89,$E1
	.byte $BB,$8D,$E3,$E7,$B1,$C9,$C4,$88
	.byte $E2,$DD,$BC,$8E,$E2,$B8,$E3,$84
	.byte $88,$E2,$E3,$BD,$8C,$E4,$EB,$E7
	.byte $B9,$E0,$84,$88,$E2,$C6,$B6,$8C
	.byte $E4,$ED,$E7,$BA,$E3,$84,$87,$E2
	.byte $E0,$BC,$CD,$E3,$B1,$C0,$C9,$C5
	.byte $87,$E1,$DC,$8E,$E3,$B8,$E3,$DC
	.byte $85,$87,$E2,$C6,$B7,$8E,$E1,$DE
	.byte $C6,$86,$E2,$E2,$BB,$CE,$E2,$B9
	.byte $E0,$86,$86,$E2,$E1,$BD,$8F,$E1
	.byte $E1,$86,$86,$E2,$DC,$BB,$8F,$E0
	.byte $86,$86,$DF,$8F,$E3,$B3,$C3,$C8
	.byte $85,$86,$E2,$DD,$BC,$8E,$E4,$00
	.byte $00,$BA,$E0,$84,$86,$E1,$DE,$91
	.byte $E2,$B9,$E3,$84,$99,$E1,$DE,$84
	.byte $87,$E1,$BB,$90,$E2,$BA,$E3,$84
	.byte $FF
level2_d2:
	.byte 40, 0
	.byte 255, 255, 44, 45
	.byte 0, 0, 10, 0
	.byte 5
	.byte 255
	.word level2_d2_t
	.word level2_d2_p
	.word level2_d2_e
level2_d3u_p:
	.byte $00,$0F,$00,$00,$00,$00,$F0,$0F
	.byte $00,$FD,$FF,$0C,$00,$00,$00,$FD
	.byte $FF,$03,$00,$00,$0F,$00,$00,$C0
	.byte $3F,$00,$00,$00,$FD,$FF,$00,$00
	.byte $F0,$3F,$00,$00,$00,$39,$00,$00
	.byte $F0,$0F,$00,$00,$00,$FC,$00,$00
	.byte $C0,$3F,$00,$00,$00,$FD,$FF,$00
	.byte $00,$30,$FD,$FF,$0C,$00,$F0,$0F
	.byte $00,$00,$00,$FD,$FF,$03,$CC,$FC
	.byte $00,$00,$00,$00,$F3,$0F,$FF
level2_d3u_e:
	.byte $FF
level2_d3u_t:
	.byte $CE,$E3,$E3,$C6,$B7,$C5,$E2,$B8
	.byte $E0,$C6,$8E,$E2,$E0,$BB,$C6,$E2
	.byte $B8,$DE,$86,$8E,$E1,$E3,$87,$E2
	.byte $BA,$DC,$86,$8E,$E3,$DE,$C7,$B5
	.byte $85,$E2,$B9,$E1,$86,$8D,$E4,$C6
	.byte $C2,$C5,$B7,$85,$E2,$B3,$C8,$86
	.byte $8C,$E2,$DD,$BC,$C9,$E3,$BA,$E2
	.byte $DD,$84,$8C,$E3,$DF,$C7,$D1,$88
	.byte $E4,$B2,$C4,$C5,$C8,$83,$8C,$E2
	.byte $E3,$BB,$CC,$E2,$BA,$E1,$82,$8C
	.byte $E2,$DD,$BC,$8D,$E1,$DD,$82,$8C
	.byte $E4,$C6,$C2,$CC,$D0,$8A,$E2,$B9
	.byte $DF,$82,$8B,$E2,$E2,$BB,$CD,$E2
	.byte $B9,$DD,$82,$8B,$E3,$00,$C7,$B4
	.byte $8C,$E2,$B3,$C8,$82,$8C,$E3,$C6
	.byte $C3,$D1,$8B,$E4,$00,$BA,$DD,$00
	.byte $8B,$E2,$E2,$BC,$CE,$E3,$B9,$E3
	.byte $DF,$8B,$E2,$DD,$BD,$8E,$E3,$B2
	.byte $C3,$C5,$8B,$E2,$DC,$BC,$8E,$E3
	.byte $A8,$8C,$8D,$8B,$E3,$00,$C7,$D2
	.byte $8D,$E3,$98,$78,$7C,$8B,$E2,$DF
	.byte $BD,$CE,$E3,$99,$79,$79,$8B,$E2
	.byte $DC,$BC,$8E,$E3,$9A,$7A,$7A,$8B
	.byte $E1,$DD,$8F,$E3,$9B,$7B,$7B,$8B
	.byte $E4,$00,$C7,$BE,$B5,$8C,$E3,$9C
	.byte $78,$7C,$8C,$E4,$C6,$C4,$C2,$D2
	.byte $8B,$E3,$9D,$79,$79,$8B,$E2,$E1
	.byte $BB,$CE,$E3,$9E,$7A,$7A,$8B,$E3
	.byte $E2,$C7,$D1,$8D,$9F,$7B,$7B,$8B
	.byte $E2,$DE,$BC,$CE,$E3,$AB,$94,$95
	.byte $8B,$E4,$00,$C7,$BF,$B5,$8B,$E4
	.byte $B1,$BE,$C0,$BF,$8C,$E4,$00,$DD
	.byte $C7,$B4,$8A,$E4,$BA,$E2,$DF,$DF
	.byte $8D,$E4,$00,$E1,$C7,$B5,$89,$E4
	.byte $B8,$DC,$00,$00,$8E,$E3,$C6,$C3
	.byte $B6,$88,$E5,$B0,$C9,$00,$00,$00
	.byte $8D,$E2,$E2,$BC,$CA,$E2,$B9,$DF
	.byte $83,$8D,$E3,$E0,$C7,$D0,$89,$E2
	.byte $B8,$E2,$83,$8D,$E2,$E1,$BB,$C9
	.byte $E2,$B1,$C9,$C4,$8D,$E2,$E2,$BC
	.byte $89,$E2,$B9,$E1,$84,$8D,$E5,$00
	.byte $C7,$C0,$BF,$B4,$86,$E2,$B8,$DF
	.byte $84,$8E,$EB,$00,$E0,$E0,$C7,$C0
	.byte $BF,$BF,$C0,$C1,$BF,$C9,$C5,$8F
	.byte $E9,$00,$00,$00,$E3,$DE,$DC,$E0
	.byte $E2,$DF,$C6,$FF
level2_d3u:
	.byte 36, 0
	.byte 255, 58, 56, 255
	.byte 0, 0, 8, 0
	.byte 3
	.byte 0, 0, 96, 0
	.byte 0, 0, 57, 0
	.byte 0, 0, 238, 0
	.word level2_d3u_t
	.word level2_d3u_p
	.word level2_d3u_e
level2_d3m_p:
	.byte $CC,$F0,$FD,$FF,$00,$00,$FC,$0F
	.byte $0F,$33,$FD,$FF,$FD,$FF,$00,$C0
	.byte $0F,$00,$03,$F0,$FD,$FF,$FD,$FF
	.byte $00,$FD,$FF,$0C,$00,$00,$F0,$F0
	.byte $FD,$FF,$FD,$FF,$FD,$FF,$4C,$00
	.byte $00,$FA,$F0,$FD,$FF,$0E,$7F,$45
	.byte $A0,$0A,$FA,$F0,$FD,$FF,$A6,$B3
	.byte $AE,$A0,$0A,$F0,$F0,$FD,$FF,$FD
	.byte $FF,$FD,$FF,$2F,$00,$00,$FC,$FD
	.byte $FF,$FD,$FF,$00,$F3,$0F,$00,$00
	.byte $3F,$F0,$FD,$FF,$00,$00,$33,$FD
	.byte $FF,$0F,$FF
level2_d3m_e:
	.byte $80,$78,$12
	.byte $FF
level2_d3m_t:
	.byte $CB,$E7,$DC,$BC,$00,$00,$00,$B9
	.byte $DF,$CC,$8B,$E2,$E3,$BD,$84,$E1
	.byte $E2,$8C,$8A,$E3,$DC,$E0,$BB,$83
	.byte $E2,$BA,$E3,$8C,$89,$E4,$C6,$C2
	.byte $C4,$B6,$84,$A2,$E1,$E3,$E0,$DC
	.byte $DD,$88,$88,$E2,$E0,$BC,$C6,$E7
	.byte $BA,$C6,$C2,$C3,$C2,$C3,$C8,$87
	.byte $88,$E2,$C6,$B6,$86,$E2,$B2,$B7
	.byte $C4,$E2,$B8,$E3,$86,$87,$E2,$C6
	.byte $B7,$CD,$E2,$B9,$E1,$86,$86,$E2
	.byte $DE,$BC,$CE,$E2,$BA,$DE,$86,$86
	.byte $E2,$C6,$B7,$8D,$E2,$B1,$C9,$C7
	.byte $85,$E2,$E0,$BB,$CE,$E2,$B8,$E2
	.byte $87,$85,$E1,$E2,$90,$E1,$DC,$87
	.byte $85,$E4,$00,$C7,$C1,$D1,$8B,$E2
	.byte $B0,$C9,$C8,$86,$E2,$DC,$BD,$CC
	.byte $E2,$B9,$E1,$88,$E2,$DC,$DD,$A2
	.byte $E1,$E4,$E0,$E2,$DF,$BB,$8D,$E1
	.byte $E2,$88,$E6,$C5,$C2,$C4,$C2,$C5
	.byte $C4,$A2,$C3,$E2,$CB,$D2,$8A,$E2
	.byte $B8,$E1,$88,$EB,$88,$89,$8A,$8B
	.byte $8C,$8D,$8E,$8F,$88,$89,$AD,$8A
	.byte $E1,$DE,$88,$EB,$7E,$7C,$80,$84
	.byte $78,$7C,$80,$84,$78,$7C,$A0,$84
	.byte $A5,$F1,$E2,$B8,$DD,$88,$EB,$80
	.byte $7D,$81,$85,$79,$7D,$81,$85,$79
	.byte $7D,$A1,$8A,$E1,$E3,$88,$EB,$7D
	.byte $7E,$82,$86,$7A,$7E,$82,$86,$7A
	.byte $7E,$A2,$89,$E2,$B9,$E0,$88,$EB
	.byte $7C,$7F,$83,$87,$7B,$7F,$83,$87
	.byte $7B,$7F,$A3,$8A,$E1,$DE,$88,$EB
	.byte $7E,$7C,$80,$84,$78,$7C,$80,$84
	.byte $78,$7C,$A4,$93,$EB,$7D,$7D,$81
	.byte $85,$79,$7D,$81,$85,$79,$7D,$A5
	.byte $89,$E2,$BA,$DD,$88,$EB,$7E,$7E
	.byte $82,$86,$7A,$7E,$82,$86,$7A,$7E
	.byte $A6,$8A,$E1,$E1,$88,$EB,$7F,$7F
	.byte $83,$87,$7B,$7F,$83,$87,$7B,$7F
	.byte $A7,$89,$E2,$B9,$DD,$88,$EB,$90
	.byte $91,$92,$93,$94,$95,$96,$97,$90
	.byte $91,$AE,$84,$C5,$E2,$B9,$E3,$88
	.byte $EA,$BF,$C0,$C1,$C0,$C1,$C0,$BF
	.byte $BF,$CB,$D2,$CA,$E2,$BA,$E2,$88
	.byte $E8,$E0,$E1,$DE,$DC,$E1,$DF,$DE
	.byte $BC,$CC,$E2,$B8,$DD,$88,$C6,$E3
	.byte $C6,$C2,$D2,$8B,$E2,$B9,$DE,$88
	.byte $85,$E2,$E0,$BC,$CD,$E2,$B3,$C8
	.byte $88,$85,$E5,$00,$C7,$C0,$BF,$D1
	.byte $8A,$E3,$00,$BA,$DD,$87,$86,$E3
	.byte $00,$E1,$BB,$CC,$E2,$B8,$E3,$87
	.byte $87,$E2,$E3,$BD,$8A,$E3,$B0,$BE
	.byte $C9,$C8,$87,$E2,$00,$C7,$A2,$C1
	.byte $E1,$B4,$87,$E2,$B8,$DD,$C9,$88
	.byte $E7,$00,$E3,$E2,$C7,$C1,$BE,$BF
	.byte $A2,$C1,$E3,$C0,$BE,$C9,$CA,$89
	.byte $EA,$00,$00,$00,$DD,$E2,$DE,$E0
	.byte $E3,$E1,$DF,$CB,$8C,$D2,$FF
level2_d3m:
	.byte 36, 0
	.byte 60, 255, 59, 255
	.byte 0, 0, 8, 0
	.byte 19
	.byte 255
	.word level2_d3m_t
	.word level2_d3m_p
	.word level2_d3m_e
level2_r7_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$00,$00,$80,$00,$00
	.byte $00,$00,$00,$00,$00,$20,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$80,$08
	.byte $00,$00,$00,$A0,$39,$0C,$A0,$0A
	.byte $00,$00,$00,$20,$33,$01,$A0,$0A
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FE,$00,$00,$00,$00,$00,$08
	.byte $00,$00,$00,$00,$00,$00,$00,$0A
	.byte $00,$00,$FF
level2_r7_e:
	.byte $20,$98,$15,$00
	.byte $38,$30,$19
	.byte $58,$78,$19
	.byte $B0,$28,$19
	.byte $FE
	.byte $00,$A8,$19
	.byte $30,$28,$1A,$18,$00,$12
	.byte $FF
level2_r7_t:
	.byte $DE,$9E,$93,$56,$57,$5C,$00,$59
	.byte $86,$86,$56,$8B,$60,$54,$55,$54
	.byte $55,$62,$86,$84,$60,$54,$55,$62
	.byte $56,$86,$5A,$59,$5B,$4F,$C4,$4E
	.byte $5D,$5C,$00,$5B,$5C,$5B,$83,$59
	.byte $51,$00,$00,$49,$55,$62,$00,$5D
	.byte $00,$60,$55,$55,$54,$54,$4B,$84
	.byte $49,$A6,$55,$83,$00,$4F,$82,$00
	.byte $00,$4C,$60,$54,$54,$4B,$CB,$6C
	.byte $C4,$83,$5D,$51,$84,$4E,$4F,$CE
	.byte $6B,$84,$83,$59,$85,$4D,$51,$8E
	.byte $6D,$84,$83,$5D,$4F,$85,$47,$8E
	.byte $44,$A4,$52,$83,$00,$51,$84,$67
	.byte $CF,$4D,$5A,$00,$58,$58,$89,$65
	.byte $88,$74,$40,$85,$4E,$57,$00,$00
	.byte $00,$83,$5D,$50,$84,$C9,$74,$41
	.byte $85,$4D,$5C,$83,$83,$00,$4F,$8D
	.byte $C7,$4C,$C4,$83,$58,$95,$4D,$58
	.byte $83,$83,$00,$61,$53,$5E,$92,$45
	.byte $62,$83,$84,$5D,$4F,$D4,$4E,$5A
	.byte $82,$84,$60,$47,$95,$5C,$82,$83
	.byte $57,$51,$D5,$4C,$58,$82,$83,$59
	.byte $50,$92,$1D,$28,$27,$63,$00,$00
	.byte $00,$83,$00,$87,$E7,$74,$A8,$8D
	.byte $8E,$8F,$8E,$AC,$85,$23,$2B,$33
	.byte $C4,$85,$5E,$86,$E6,$9D,$7D,$81
	.byte $85,$79,$A5,$85,$22,$32,$C5,$83
	.byte $5A,$51,$C6,$E7,$74,$9E,$7E,$82
	.byte $86,$7A,$A6,$86,$30,$85,$83,$59
	.byte $88,$E6,$9F,$7F,$83,$87,$7B,$A7
	.byte $85,$23,$2B,$85,$83,$00,$61,$5E
	.byte $86,$E6,$98,$7A,$80,$84,$7A,$A0
	.byte $85,$22,$31,$85,$83,$5D,$4F,$C6
	.byte $E7,$74,$AB,$95,$96,$97,$90,$AE
	.byte $85,$23,$32,$85,$84,$50,$86,$CC
	.byte $21,$2E,$85,$83,$00,$61,$52,$4A
	.byte $90,$1E,$36,$85,$84,$58,$60,$54
	.byte $66,$5E,$8E,$3F,$4E,$5A,$84,$84
	.byte $60,$47,$D1,$3F,$45,$62,$84,$83
	.byte $5D,$4F,$D3,$3F,$4D,$5C,$83,$83
	.byte $00,$51,$94,$4E,$5A,$83,$84,$4F
	.byte $94,$4C,$C4,$83,$57,$61,$53,$5E
	.byte $92,$4E,$84,$83,$5C,$00,$4F,$D2
	.byte $82,$5D,$83,$83,$00,$00,$51,$93
	.byte $4C,$5B,$83,$56,$5B,$5A,$5B,$5D
	.byte $92,$3F,$44,$63,$C4,$54,$55,$A4
	.byte $54,$66,$66,$5E,$8F,$4E,$5C,$84
	.byte $D7,$3F,$4C,$56,$84,$94,$1D,$28
	.byte $52,$52,$63,$C5,$94,$22,$2D,$56
	.byte $59,$C6,$52,$52,$53,$52,$53,$53
	.byte $52,$53,$52,$53,$46,$89,$21,$2C
	.byte $C8,$58,$58,$00,$00,$5D,$5A,$56
	.byte $5D,$00,$00,$50,$8A,$31,$88,$CA
	.byte $61,$52,$53,$53,$52,$53,$52,$52
	.byte $53,$53,$37,$C9,$FF
level2_r7:
	.byte 44, 0
	.byte 64, 255, 255, 255
	.byte 252, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r7_t
	.word level2_r7_p
	.word level2_r7_e
level2_r9z_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$00,$00,$00,$22,$00
	.byte $00,$00,$00,$00,$00,$00,$88,$00
	.byte $00,$00,$00,$00,$00,$00,$22,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FE,$FE,$FF
level2_r9z_e:
	.byte $28,$90,$1A,$18,$1E,$00
	.byte $A8,$98,$19
	.byte $FF
level2_r9z_t:
	.byte $C5,$4D,$51,$AB,$EE,$4E,$5B,$AA
	.byte $EE,$92,$4C,$59,$8A,$92,$4D,$58
	.byte $5A,$89,$83,$44,$52,$63,$50,$8B
	.byte $49,$55,$55,$62,$5B,$5A,$5D,$82
	.byte $57,$5B,$5B,$83,$49,$54,$62,$61
	.byte $46,$8A,$A3,$EE,$49,$A4,$54,$55
	.byte $54,$55,$54,$83,$00,$00,$4E,$59
	.byte $61,$52,$46,$8B,$A9,$EE,$85,$4C
	.byte $A2,$EE,$60,$4B,$94,$83,$48,$53
	.byte $63,$5A,$60,$47,$B5,$EE,$83,$45
	.byte $55,$62,$57,$51,$AD,$EE,$1D,$28
	.byte $28,$A5,$53,$52,$83,$E4,$00,$00
	.byte $4D,$EE,$8E,$E9,$23,$30,$2D,$5A
	.byte $5D,$EE,$57,$EE,$5D,$85,$4C,$5D
	.byte $61,$46,$8C,$4C,$A8,$EE,$83,$48
	.byte $52,$63,$A2,$EE,$61,$53,$46,$8B
	.byte $5A,$87,$83,$45,$55,$62,$82,$A2
	.byte $EE,$61,$52,$46,$88,$4E,$88,$83
	.byte $00,$00,$4C,$84,$E8,$EE,$5A,$61
	.byte $53,$66,$66,$66,$5E,$83,$4C,$88
	.byte $8B,$E3,$EE,$56,$4F,$A7,$EE,$23
	.byte $A8,$EE,$83,$48,$52,$63,$5C,$86
	.byte $50,$87,$21,$31,$87,$83,$45,$55
	.byte $55,$62,$85,$E2,$EE,$51,$87,$23
	.byte $2D,$87,$83,$00,$00,$00,$4E,$85
	.byte $56,$4F,$87,$22,$A8,$EE,$86,$4C
	.byte $85,$59,$88,$4D,$57,$87,$83,$48
	.byte $52,$52,$63,$85,$E6,$EE,$61,$52
	.byte $52,$52,$46,$84,$5A,$87,$83,$49
	.byte $55,$62,$A7,$EE,$E5,$58,$EE,$5A
	.byte $57,$51,$83,$4C,$88,$83,$00,$00
	.byte $4D,$87,$A3,$EE,$5A,$84,$4D,$A8
	.byte $EE,$85,$4E,$8B,$4F,$8C,$83,$48
	.byte $52,$63,$8A,$E6,$EE,$61,$52,$52
	.byte $52,$63,$88,$83,$E5,$4D,$58,$EE
	.byte $59,$5A,$82,$F4,$59,$EE,$59,$5B
	.byte $5A,$EE,$58,$5D,$5A,$EE,$5A,$EE
	.byte $59,$5D,$EE,$5B,$EE,$59,$5D,$5A
	.byte $83,$4E,$60,$54,$54,$55,$54,$54
	.byte $55,$A5,$54,$55,$55,$54,$A4,$55
	.byte $54,$A4,$55,$54,$55,$83,$49,$47
	.byte $D9,$83,$DB,$9E,$9E,$9E,$9E,$FF
level2_r9z:
	.byte 32, 0
	.byte 255, 69, 68, 255
	.byte 0, 232, 250, 0
	.byte 32
	.byte 255
	.word level2_r9z_t
	.word level2_r9z_p
	.word level2_r9z_e
level2_r2_p:
	.byte $00,$80,$08,$00,$00,$00,$00,$00
	.byte $00,$00,$02,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$80,$00,$00
	.byte $00,$00,$00,$A0,$8A,$AA,$00,$00
	.byte $00,$00,$00,$20,$AA,$AA,$0A,$00
	.byte $00,$00,$00,$00,$80,$AA,$02,$00
	.byte $00,$00,$00,$00,$00,$0A,$00,$00
	.byte $00,$00,$00,$00,$00,$AA,$00,$00
	.byte $00,$00,$00,$00,$00,$A0,$0A,$00
	.byte $00,$00,$00,$00,$00,$A0,$02,$00
	.byte $FF
level2_r2_e:
	.byte $FF
level2_r2_t:
	.byte $E6,$EE,$5D,$57,$5A,$5D,$5C,$A9
	.byte $EE,$60,$60,$4B,$C5,$4D,$5D,$A5
	.byte $EE,$54,$55,$54,$55,$55,$54,$62
	.byte $5D,$56,$85,$5B,$51,$C7,$4D,$5B
	.byte $85,$C6,$1E,$2A,$29,$36,$84,$56
	.byte $50,$88,$5D,$85,$86,$00,$00,$00
	.byte $22,$56,$83,$E2,$EE,$4F,$87,$4E
	.byte $5B,$85,$89,$23,$57,$83,$5A,$88
	.byte $49,$55,$62,$84,$89,$1E,$62,$83
	.byte $58,$88,$6C,$00,$4E,$56,$83,$89
	.byte $00,$4E,$5C,$82,$5C,$50,$87,$6B
	.byte $00,$4C,$5D,$83,$8A,$4C,$57,$82
	.byte $5A,$51,$89,$4E,$56,$83,$8A,$4D
	.byte $59,$82,$58,$4F,$87,$6D,$00,$4C
	.byte $A4,$EE,$8A,$4E,$A4,$EE,$51,$87
	.byte $44,$53,$63,$84,$8A,$4C,$5B,$82
	.byte $5A,$50,$87,$49,$54,$62,$84,$8A
	.byte $4D,$59,$82,$5C,$88,$6C,$00,$4C
	.byte $59,$83,$8A,$4E,$5A,$82,$E2,$EE
	.byte $4F,$87,$6D,$00,$4D,$5B,$83,$8A
	.byte $4D,$A4,$EE,$88,$48,$53,$63,$A4
	.byte $EE,$8A,$4E,$5B,$8B,$1E,$55,$62
	.byte $84,$8B,$A3,$EE,$57,$50,$86,$40
	.byte $00,$00,$4E,$56,$83,$8A,$4C,$5C
	.byte $82,$E2,$EE,$25,$86,$E1,$E6,$82
	.byte $4D,$5A,$83,$8A,$4D,$57,$83,$35
	.byte $28,$1F,$83,$1D,$24,$82,$4E,$A4
	.byte $EE,$8B,$E3,$EE,$57,$5D,$A2,$EE
	.byte $2C,$35,$28,$27,$27,$37,$83,$4D
	.byte $56,$83,$8A,$49,$55,$54,$54,$36
	.byte $32,$A2,$EE,$E8,$34,$2A,$36,$EE
	.byte $35,$28,$53,$63,$A4,$EE,$8A,$C4
	.byte $1E,$29,$36,$2C,$24,$00,$23,$34
	.byte $2A,$36,$2B,$A5,$EE,$8E,$00,$00
	.byte $1E,$36,$35,$28,$37,$26,$00,$23
	.byte $2D,$85,$90,$00,$1E,$29,$36,$2F
	.byte $35,$27,$37,$A6,$EE,$91,$00,$00
	.byte $1E,$29,$36,$34,$2A,$36,$85,$93
	.byte $00,$00,$21,$26,$00,$23,$2F,$84
	.byte $95,$23,$35,$28,$37,$A5,$EE,$93
	.byte $E5,$1D,$27,$37,$EE,$31,$A6,$EE
	.byte $93,$1E,$36,$A9,$EE,$93,$00,$22
	.byte $2C,$88,$94,$23,$32,$88,$94,$22
	.byte $2F,$88,$94,$23,$30,$88,$94,$1E
	.byte $36,$88,$94,$00,$22,$33,$87,$96
	.byte $32,$87,$95,$1E,$29,$36,$86,$95
	.byte $00,$00,$22,$2B,$85,$97,$21,$86
	.byte $97,$23,$33,$85,$98,$2C,$85,$97
	.byte $22,$31,$85,$96,$1D,$37,$A6,$EE
	.byte $96,$22,$33,$86,$97,$2E,$86,$FF
level2_r2:
	.byte 44, 128
	.byte 255, 255, 255, 74
	.byte 0, 0, 0, 0
	.byte 32
	.byte 255
	.word level2_r2_t
	.word level2_r2_p
	.word level2_r2_e
level2_r11_p:
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $00,$00,$00,$00,$00,$A2,$08,$00
	.byte $00,$00,$00,$00,$00,$20,$AA,$00
	.byte $00,$00,$00,$39,$0C,$80,$AA,$00
	.byte $00,$00,$00,$5F,$01,$00,$00,$00
	.byte $00,$00,$00,$61,$0A,$00,$00,$00
	.byte $00,$C0,$00,$00,$8C,$00,$00,$00
	.byte $00,$E0,$22,$F2,$2B,$00,$00,$00
	.byte $00,$00,$00,$00,$88,$80,$08,$00
	.byte $00,$00,$00,$00,$AA,$20,$0A,$00
	.byte $00,$80,$88,$08,$00,$A0,$0A,$00
	.byte $00,$20,$A2,$AA,$0A,$A0,$02,$00
	.byte $00,$00,$00,$00,$00,$A0,$00,$00
	.byte $FF
level2_r11_e:
	.byte $FF
level2_r11_t:
	.byte $D6,$21,$33,$A6,$EE,$96,$22,$32
	.byte $86,$9E,$97,$2C,$86,$95,$1D,$37
	.byte $A7,$EE,$95,$1E,$29,$36,$86,$95
	.byte $00,$00,$22,$2C,$85,$98,$33,$85
	.byte $97,$1E,$2A,$36,$84,$97,$00,$00
	.byte $21,$31,$83,$99,$22,$2D,$83,$9A
	.byte $2C,$83,$8D,$E5,$A9,$8E,$8F,$88
	.byte $AD,$88,$31,$83,$8D,$E5,$9D,$81
	.byte $85,$79,$A5,$87,$21,$2E,$83,$8D
	.byte $E5,$9E,$82,$86,$7A,$A6,$88,$30
	.byte $83,$8D,$ED,$9F,$83,$87,$7B,$A7
	.byte $44,$53,$52,$52,$27,$28,$27,$37
	.byte $A4,$EE,$8D,$EE,$98,$80,$84,$78
	.byte $A0,$4E,$57,$59,$EE,$5B,$5C,$59
	.byte $5B,$5A,$83,$8D,$E5,$99,$81,$85
	.byte $79,$A1,$82,$E3,$EE,$59,$57,$A7
	.byte $EE,$8D,$EB,$9A,$82,$86,$7A,$A2
	.byte $49,$54,$55,$55,$54,$62,$86,$8D
	.byte $E5,$9B,$83,$87,$7B,$A3,$C5,$4E
	.byte $57,$85,$8D,$E5,$9C,$80,$84,$78
	.byte $A4,$85,$4C,$58,$85,$8D,$E5,$9D
	.byte $81,$85,$79,$A5,$85,$4E,$57,$85
	.byte $8B,$E7,$48,$46,$AB,$96,$97,$90
	.byte $AF,$85,$4D,$86,$8B,$4D,$4F,$CA
	.byte $4C,$5C,$85,$89,$44,$52,$63,$51
	.byte $8A,$4E,$59,$85,$89,$4C,$56,$59
	.byte $8C,$56,$85,$88,$E5,$E4,$54,$55
	.byte $54,$47,$8B,$A6,$EE,$87,$EC,$A8
	.byte $88,$89,$8A,$8B,$8C,$8D,$8E,$8F
	.byte $88,$89,$AD,$84,$4C,$5B,$85,$87
	.byte $EC,$9C,$78,$7C,$80,$84,$78,$7C
	.byte $80,$84,$78,$7C,$A4,$85,$58,$85
	.byte $87,$EC,$9D,$79,$7D,$81,$85,$79
	.byte $7D,$81,$85,$79,$7D,$A5,$84,$4D
	.byte $A6,$EE,$87,$EC,$AB,$90,$91,$92
	.byte $93,$94,$95,$96,$97,$90,$91,$AE
	.byte $84,$4E,$86,$87,$00,$00,$44,$52
	.byte $53,$4A,$C5,$44,$4A,$83,$4D,$86
	.byte $89,$4D,$56,$5B,$51,$85,$4C,$51
	.byte $83,$4E,$86,$8A,$5B,$60,$4B,$8A
	.byte $4C,$5A,$85,$89,$49,$54,$4B,$C6
	.byte $23,$26,$83,$22,$2E,$85,$89,$C7
	.byte $1D,$27,$37,$24,$84,$2F,$85,$90
	.byte $23,$31,$2F,$84,$21,$2B,$85,$90
	.byte $22,$2F,$32,$84,$1E,$36,$85,$90
	.byte $1E,$2A,$2A,$20,$83,$00,$21,$2E
	.byte $84,$90,$C8,$22,$32,$84,$97,$1D
	.byte $37,$A5,$EE,$97,$22,$2B,$85,$97
	.byte $21,$2C,$85,$87,$1D,$28,$28,$28
	.byte $27,$1F,$8A,$22,$30,$85,$87,$1E
	.byte $2A,$2A,$36,$2E,$35,$A4,$27,$1F
	.byte $85,$21,$2B,$85,$87,$00,$00,$00
	.byte $23,$33,$30,$2E,$2B,$2B,$34,$20
	.byte $86,$2E,$85,$8A,$1E,$29,$29,$29
	.byte $2A,$29,$20,$C5,$1D,$37,$A6,$EE
	.byte $8A,$CC,$23,$2D,$86,$96,$21,$31
	.byte $86,$96,$23,$32,$86,$97,$2C,$86
	.byte $96,$21,$30,$86,$FF
level2_r11:
	.byte 52, 0
	.byte 255, 255, 75, 76
	.byte 0, 0, 0, 0
	.byte 32
	.byte 255
	.word level2_r11_t
	.word level2_r11_p
	.word level2_r11_e
