level2_r1_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$00,$00,$00,$AA,$00
	.byte $00,$00,$00,$00,$00,$10,$22,$00
	.byte $00,$00,$00,$00,$00,$00,$11,$15
	.byte $01,$00,$00,$00,$00,$00,$10,$11
	.byte $01,$00,$00,$00,$00,$00,$01,$00
	.byte $00,$00,$00,$00,$00,$00,$A1,$0A
	.byte $00,$00,$00,$00,$00,$00,$A0,$0A
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FF
level2_r1_e:
	.byte $FF
level2_r1_t:
	.byte $57,$4F,$C4,$4E,$59,$C7,$5A,$51
	.byte $C4,$4D,$C8,$57,$50,$85,$58,$83
	.byte $59,$57,$57,$56,$00,$4F,$84,$4C
	.byte $88,$57,$4F,$84,$4D,$56,$83,$60
	.byte $55,$55,$55,$54,$4B,$85,$58,$87
	.byte $54,$4B,$84,$4C,$83,$5B,$50,$C9
	.byte $4C,$59,$87,$C6,$4D,$83,$00,$4F
	.byte $89,$4E,$5A,$87,$87,$57,$82,$60
	.byte $4B,$92,$86,$4C,$83,$50,$CA,$4C
	.byte $58,$87,$86,$4D,$5D,$00,$5A,$51
	.byte $8A,$4D,$5B,$87,$53,$53,$52,$53
	.byte $52,$53,$63,$00,$00,$00,$50,$8A
	.byte $21,$C8,$58,$5D,$5D,$00,$00,$58
	.byte $00,$00,$00,$5B,$8B,$22,$2C,$87
	.byte $C9,$5A,$8C,$2F,$87,$89,$00,$51
	.byte $8A,$23,$88,$89,$59,$50,$88,$3C
	.byte $00,$21,$31,$87,$89,$5D,$4F,$88
	.byte $3E,$00,$23,$C8,$8A,$50,$87,$48
	.byte $53,$52,$63,$88,$89,$57,$88,$4D
	.byte $00,$59,$5B,$58,$56,$57,$56,$00
	.byte $5C,$56,$57,$89,$56,$51,$87,$49
	.byte $55,$A1,$C2,$A1,$C5,$A1,$C3,$A3
	.byte $C5,$A1,$CA,$A1,$C2,$A1,$C5,$A1
	.byte $C4,$89,$5A,$4F,$87,$CC,$89,$00
	.byte $51,$93,$89,$5A,$4F,$8D,$3C,$85
	.byte $89,$00,$8E,$3E,$85,$89,$5B,$51
	.byte $8B,$A1,$B1,$A1,$C1,$A2,$BF,$A1
	.byte $BE,$C0,$A2,$BE,$89,$00,$50,$89
	.byte $48,$52,$63,$59,$5B,$5B,$58,$57
	.byte $57,$56,$8A,$61,$52,$53,$4A,$86
	.byte $4E,$5C,$C8,$8A,$57,$5B,$5C,$50
	.byte $86,$A1,$B9,$A1,$DD,$88,$8A,$60
	.byte $54,$55,$47,$86,$A1,$B8,$A1,$DE
	.byte $88,$89,$57,$4F,$C9,$4D,$00,$59
	.byte $59,$86,$89,$56,$51,$89,$49,$54
	.byte $54,$62,$86,$94,$00,$3D,$00,$23
	.byte $86,$89,$5C,$8B,$3C,$00,$21,$2C
	.byte $85,$89,$5A,$4F,$8A,$00,$00,$21
	.byte $32,$85,$89,$5D,$8E,$2E,$85,$98
	.byte $30,$85,$89,$5C,$50,$8D,$2F,$85
	.byte $89,$00,$4F,$8D,$2D,$85,$8A,$50
	.byte $8C,$23,$C6,$8A,$51,$8C,$4C,$86
	.byte $8A,$50,$93,$8A,$61,$52,$53,$46
	.byte $89,$4E,$5D,$85,$8A,$00,$56,$5A
	.byte $61,$53,$53,$52,$4A,$86,$5B,$85
	.byte $FF
level2_r1:
	.byte 40, 64
	.byte 11, 13, 10, 12
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r1_t
	.word level2_r1_p
	.word level2_r1_e
level2_r1b_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$04,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$00,$00,$40,$0C,$00,$00,$00
	.byte $00,$00,$00,$30,$01,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$48,$00,$00
	.byte $00,$00,$00,$00,$00,$12,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FF
level2_r1b_e:
	.byte $FE
	.byte $20,$60,$01,$00
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
	.byte $86,$00,$61,$4A,$A1,$A9,$A1,$8A
	.byte $A1,$8B,$A1,$8C,$A1,$AD,$8B,$4C
	.byte $5D,$83,$87,$5A,$4F,$A1,$9B,$A1
	.byte $83,$A1,$87,$7B,$A1,$A3,$8C,$57
	.byte $83,$87,$56,$51,$A1,$9C,$80,$A1
	.byte $84,$78,$A1,$A4,$8B,$4D,$C4,$87
	.byte $5C,$50,$A1,$AA,$A1,$92,$A1,$93
	.byte $A1,$94,$A1,$AE,$8B,$4C,$5A,$83
	.byte $87,$59,$50,$CF,$3F,$4E,$57,$83
	.byte $87,$57,$4F,$90,$4C,$5D,$83,$87
	.byte $5C,$50,$90,$4D,$59,$83,$87,$56
	.byte $8F,$3F,$44,$63,$C4,$87,$5B,$51
	.byte $8F,$4E,$58,$84,$87,$5C,$50,$8F
	.byte $4D,$5D,$84,$87,$56,$51,$90,$5A
	.byte $84,$87,$5C,$4F,$90,$56,$84,$87
	.byte $00,$61,$A4,$53,$52,$46,$A1,$A9
	.byte $A1,$88,$A1,$89,$A1,$8A,$A1,$AD
	.byte $82,$3F,$48,$63,$5A,$84,$88,$00
	.byte $5C,$5B,$00,$5A,$58,$51,$A1,$9F
	.byte $7B,$7F,$A1,$83,$A1,$A7,$83,$4E
	.byte $C6,$8A,$5C,$58,$00,$5B,$50,$A1
	.byte $98,$78,$7C,$80,$A0,$83,$4D,$5D
	.byte $85,$89,$60,$54,$54,$54,$55,$47
	.byte $A1,$AA,$A1,$90,$A1,$91,$A1,$92
	.byte $A1,$AE,$84,$C6,$89,$50,$CC,$88
	.byte $97,$45,$62,$85,$89,$51,$8C,$00
	.byte $3F,$4E,$5B,$84,$89,$61,$4A,$8D
	.byte $4C,$5C,$84,$89,$5C,$50,$8D,$4E
	.byte $85,$89,$00,$61,$53,$A4,$52,$53
	.byte $53,$52,$52,$A4,$53,$63,$C5,$FF
level2_r1b:
	.byte 40, 0
	.byte 255, 21, 255, 255
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r1b_t
	.word level2_r1b_p
	.word level2_r1b_e
level2_r2_fake_p:
	.byte $00,$80,$08,$00,$00,$00,$00,$00
	.byte $00,$00,$02,$00,$00,$40,$00,$00
	.byte $00,$00,$00,$00,$00,$10,$00,$00
	.byte $FE,$00,$00,$00,$80,$88,$A8,$00
	.byte $00,$00,$00,$00,$20,$AA,$AA,$08
	.byte $00,$00,$00,$00,$00,$A0,$AA,$0A
	.byte $00,$00,$00,$00,$00,$20,$0A,$00
	.byte $00,$FF
level2_r2_fake_e:
	.byte $FF
level2_r2_fake_t:
	.byte $5C,$5D,$00,$57,$5A,$58,$C9,$60
	.byte $55,$4B,$C5,$4E,$56,$C5,$54,$55
	.byte $54,$55,$54,$55,$62,$00,$5B,$85
	.byte $5D,$50,$C7,$4E,$58,$85,$C6,$1E
	.byte $2A,$2A,$36,$84,$57,$89,$C6,$86
	.byte $00,$00,$00,$21,$5B,$83,$00,$4F
	.byte $87,$4D,$59,$85,$89,$23,$57,$84
	.byte $51,$88,$56,$85,$89,$1E,$62,$84
	.byte $4F,$87,$45,$55,$62,$84,$89,$00
	.byte $4C,$83,$56,$51,$87,$3D,$00,$4D
	.byte $57,$83,$8B,$57,$83,$50,$87,$3C
	.byte $00,$4E,$C4,$8B,$5D,$82,$00,$4F
	.byte $89,$4C,$5C,$83,$8A,$4E,$00,$00
	.byte $00,$5D,$88,$3E,$00,$4E,$56,$83
	.byte $8E,$58,$50,$87,$44,$52,$63,$C4
	.byte $8A,$4C,$83,$57,$4F,$87,$49,$54
	.byte $62,$84,$8A,$4E,$57,$82,$00,$51
	.byte $87,$3D,$00,$4E,$5D,$83,$8B,$58
	.byte $82,$5D,$4F,$87,$3E,$00,$4D,$58
	.byte $83,$8B,$57,$82,$00,$88,$44,$53
	.byte $63,$C4,$8A,$4C,$C4,$88,$49,$54
	.byte $62,$84,$8A,$4E,$5C,$82,$59,$51
	.byte $86,$40,$00,$00,$4D,$58,$83,$8B
	.byte $57,$82,$00,$4F,$86,$E6,$82,$4E
	.byte $5B,$83,$8A,$4D,$5C,$83,$35,$27
	.byte $1F,$83,$1D,$26,$83,$58,$83,$8A
	.byte $4E,$5A,$59,$82,$00,$2D,$35,$28
	.byte $27,$28,$29,$24,$83,$C4,$8A,$49
	.byte $55,$54,$55,$36,$2D,$00,$00,$34
	.byte $29,$26,$00,$23,$28,$53,$63,$84
	.byte $8A,$C4,$1E,$2A,$36,$2B,$26,$00
	.byte $21,$27,$29,$36,$56,$C5,$8E,$00
	.byte $00,$1E,$36,$35,$28,$37,$25,$00
	.byte $21,$2D,$85,$90,$00,$1E,$2A,$36
	.byte $31,$35,$28,$37,$C6,$91,$00,$00
	.byte $1E,$2A,$36,$34,$29,$36,$85,$93
	.byte $00,$00,$23,$26,$00,$21,$2D,$84
	.byte $96,$35,$28,$37,$C5,$93,$1D,$27
	.byte $37,$00,$2E,$C6,$93,$1E,$36,$C9
	.byte $93,$00,$22,$2C,$88,$94,$23,$2F
	.byte $88,$94,$21,$32,$88,$FF
level2_r2_fake:
	.byte 32, 0
	.byte 255, 255, 22, 255
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r2_fake_t
	.word level2_r2_fake_p
	.word level2_r2_fake_e
level2_d0_p:
	.byte $50,$05,$10,$51,$55,$11,$91,$0D
	.byte $50,$01,$00,$10,$00,$00,$00,$00
	.byte $50,$04,$00,$00,$00,$00,$00,$00
	.byte $54,$11,$01,$00,$00,$00,$44,$04
	.byte $11,$00,$EB,$98,$15,$55,$55,$01
	.byte $55,$00,$42,$30,$51,$55,$00,$00
	.byte $55,$00,$50,$00,$50,$01,$00,$00
	.byte $51,$04,$55,$00,$55,$05,$00,$00
	.byte $00,$11,$15,$50,$55,$51,$00,$00
	.byte $00,$00,$45,$04,$51,$10,$55,$04
	.byte $FF
level2_d0_e:
	.byte $FF
level2_d0_t:
	.byte $00,$00,$00,$E3,$A1,$BD,$C6,$A1
	.byte $B9,$A1,$DE,$A1,$DF,$C4,$E1,$A1
	.byte $C6,$A2,$C4,$A1,$C5,$A1,$C2,$A1
	.byte $C4,$A1,$C5,$A1,$C3,$A1,$C4,$A1
	.byte $C3,$A1,$C2,$83,$A1,$DE,$87,$A1
	.byte $B3,$A2,$C3,$A1,$C8,$E1,$A1,$DD
	.byte $E2,$A1,$DD,$A1,$BB,$C6,$A1,$A9
	.byte $A1,$8B,$A1,$8C,$A1,$8F,$83,$A1
	.byte $DF,$A1,$BC,$86,$00,$00,$00,$A1
	.byte $B2,$A1,$C5,$A1,$C2,$A2,$C4,$A1
	.byte $B6,$86,$A1,$9A,$A1,$86,$7A,$A1
	.byte $81,$83,$E1,$A1,$BB,$89,$3D,$CB
	.byte $A1,$AB,$A1,$93,$A2,$94,$83,$A1
	.byte $C6,$A1,$B6,$89,$3C,$8B,$C4,$82
	.byte $A1,$DE,$A1,$BB,$CA,$90,$82,$E0
	.byte $A1,$BD,$8A,$D0,$82,$E3,$A1,$BB
	.byte $9A,$82,$E1,$9B,$82,$A1,$DE,$A1
	.byte $BD,$9A,$82,$E3,$A1,$BC,$9A,$82
	.byte $00,$A1,$C7,$A1,$B5,$99,$83,$E0
	.byte $A1,$C7,$A1,$BE,$A1,$B4,$97,$82
	.byte $A1,$C6,$A2,$C2,$A1,$C3,$A1,$C2
	.byte $A1,$CC,$A1,$D2,$95,$00,$E1,$A1
	.byte $BB,$D6,$A1,$B1,$A1,$B5,$83,$E2
	.byte $E1,$A1,$BD,$96,$A1,$B9,$A1,$C7
	.byte $A1,$C1,$A1,$BF,$A1,$C1,$A1,$C2
	.byte $A1,$C3,$A1,$B6,$85,$A1,$A8,$A1
	.byte $89,$A1,$8A,$A1,$8B,$A1,$8C,$A1
	.byte $8D,$A1,$8E,$A1,$8F,$A1,$AC,$E7
	.byte $A1,$CE,$A3,$CC,$C0,$C0,$A1,$BE
	.byte $A1,$C9,$E1,$E1,$E2,$E2,$C8,$A1
	.byte $99,$7D,$A1,$81,$A1,$85,$79,$7D
	.byte $A1,$81,$A1,$85,$A1,$A1,$C4,$E7
	.byte $A1,$B8,$A1,$DD,$E0,$E0,$A1,$C6
	.byte $A1,$C3,$A1,$C4,$A1,$C3,$88,$A1
	.byte $9A,$7E,$A1,$82,$A1,$86,$7A,$7E
	.byte $A1,$82,$A1,$86,$A1,$A2,$85,$A1
	.byte $B9,$E1,$A1,$C6,$A1,$C5,$A1,$B6
	.byte $00,$00,$00,$88,$A1,$9B,$7F,$A1
	.byte $83,$A1,$87,$7B,$7F,$A1,$83,$A1
	.byte $87,$A1,$A3,$85,$A1,$B8,$A1,$C6
	.byte $A1,$B7,$C5,$88,$A1,$9C,$7C,$80
	.byte $A1,$84,$78,$7C,$80,$A1,$84,$A1
	.byte $A4,$86,$A1,$BB,$C6,$A1,$C1,$A1
	.byte $BF,$A1,$B4,$85,$A1,$AB,$A1,$91
	.byte $A1,$92,$A1,$93,$A1,$94,$A1,$95
	.byte $A1,$96,$A1,$97,$A1,$AF,$E7,$A1
	.byte $CE,$A1,$BF,$A1,$BE,$C0,$A1,$C9
	.byte $A1,$B6,$86,$E0,$E2,$A1,$BC,$85
	.byte $00,$00,$00,$A1,$D5,$C7,$A1,$B8
	.byte $A1,$DE,$A1,$C6,$A1,$B7,$C7,$00
	.byte $A1,$DF,$A1,$BB,$88,$A1,$DA,$87
	.byte $A1,$B9,$A1,$C6,$A1,$B7,$C8,$00
	.byte $E3,$A1,$BC,$90,$A1,$BA,$A1,$BD
	.byte $C9,$00,$A1,$DC,$A1,$BB,$87,$A1
	.byte $B1,$A1,$BB,$87,$A1,$B9,$A1,$B7
	.byte $89,$8A,$A1,$B8,$A1,$B6,$87,$A1
	.byte $DA,$CA,$00,$E0,$88,$A1,$DB,$C7
	.byte $A1,$B0,$A1,$BD,$8A,$00,$A1,$DF
	.byte $87,$A1,$B1,$A1,$BB,$87,$A1,$B8
	.byte $A1,$BC,$8A,$00,$00,$A1,$C7,$A1
	.byte $B5,$85,$A1,$B8,$87,$A1,$B1,$A1
	.byte $C9,$A1,$C7,$A1,$B4,$89,$82,$A1
	.byte $DF,$A1,$BB,$85,$A1,$B9,$A1,$BD
	.byte $86,$A1,$B9,$E0,$A1,$DE,$A1,$BD
	.byte $89,$82,$00,$A1,$C7,$A1,$C1,$A1
	.byte $B4,$83,$A1,$B8,$A1,$BB,$87,$E2
	.byte $E3,$8A,$83,$00,$E3,$A1,$C7,$C0
	.byte $A1,$BF,$A1,$BE,$A1,$C9,$87,$A1
	.byte $BA,$E0,$00,$A1,$C7,$A1,$B5,$88
	.byte $84,$00,$00,$A1,$DD,$A1,$DE,$E3
	.byte $A1,$C6,$A1,$B7,$84,$01,$0B,$3B
	.byte $00,$00,$00,$A1,$C7,$A1,$C1,$A1
	.byte $B4,$86,$86,$00,$00,$A1,$DD,$A1
	.byte $BD,$C5,$02,$0F,$3A,$83,$00,$E2
	.byte $A1,$BB,$86,$88,$A1,$DE,$86,$00
	.byte $00,$07,$E3,$83,$A1,$DD,$A1,$BD
	.byte $86,$88,$E3,$A1,$BC,$87,$02,$A1
	.byte $C8,$83,$00,$A1,$C7,$A1,$B4,$85
	.byte $89,$A1,$BD,$87,$00,$A1,$BA,$E2
	.byte $83,$00,$A1,$C7,$C0,$A1,$B5,$83
	.byte $88,$E0,$A1,$C7,$A1,$C1,$A1,$BE
	.byte $A1,$B5,$85,$A1,$B8,$85,$00,$E1
	.byte $A1,$C7,$C0,$A1,$C1,$A1,$BF,$88
	.byte $A1,$DF,$E2,$E0,$A1,$DE,$A1,$BB
	.byte $85,$A1,$B9,$A1,$DC,$85,$00,$00
	.byte $E2,$A1,$DC,$E2,$FF
level2_d0:
	.byte 40, 192
	.byte 23, 25, 24, 26
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_d0_t
	.word level2_d0_p
	.word level2_d0_e
level2_r8_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$02,$00,$00,$00,$00,$00
	.byte $02,$00,$28,$00,$00,$00,$00,$A0
	.byte $2A,$02,$00,$00,$00,$20,$08,$02
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$70,$40,$01
	.byte $00,$00,$00,$80,$00,$00,$00,$00
	.byte $00,$E0,$00,$00,$00,$40,$00,$F0
	.byte $00,$00,$80,$02,$00,$00,$00,$00
	.byte $A5,$02,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$FF
level2_r8_e:
	.byte $50,$98,$03
	.byte $68,$C8,$81,$00
	.byte $FF
level2_r8_t:
	.byte $30,$2C,$BE,$F4,$6B,$E9,$F4,$6D
	.byte $E9,$F4,$64,$E9,$F4,$67,$E2,$6D
	.byte $E6,$F2,$48,$53,$63,$52,$52,$53
	.byte $52,$53,$53,$4A,$E1,$44,$F2,$45
	.byte $54,$62,$5C,$5A,$5C,$00,$5A,$56
	.byte $61,$53,$63,$F2,$A2,$4E,$56,$A8
	.byte $F4,$4C,$5D,$E8,$F2,$44,$53,$63
	.byte $A9,$F2,$45,$55,$62,$E1,$5B,$57
	.byte $E1,$56,$57,$59,$E1,$59,$F2,$A2
	.byte $4C,$60,$54,$55,$55,$C3,$54,$55
	.byte $55,$F4,$4D,$51,$A8,$F2,$44,$52
	.byte $63,$4B,$E8,$F2,$4C,$5A,$4F,$A9
	.byte $F2,$4D,$57,$EA,$F1,$43,$36,$2B
	.byte $61,$53,$53,$52,$53,$52,$53,$53
	.byte $52,$56,$F1,$00,$22,$30,$57,$00
	.byte $58,$5D,$58,$A2,$58,$4F,$00,$F2
	.byte $45,$55,$55,$62,$A5,$5A,$51,$E1
	.byte $F2,$A3,$4E,$56,$E4,$00,$61,$4A
	.byte $F5,$49,$62,$E5,$5A,$50,$F5,$00
	.byte $45,$62,$E4,$57,$E1,$F6,$00,$4D
	.byte $58,$E3,$5A,$E1,$F5,$44,$53,$63
	.byte $A4,$5C,$51,$F5,$45,$54,$62,$E5
	.byte $4F,$F5,$A2,$4D,$E4,$5D,$E1,$F7
	.byte $4E,$E4,$5B,$50,$F5,$44,$52,$63
	.byte $E4,$60,$4B,$F5,$21,$A2,$5B,$E2
	.byte $5D,$50,$C1,$A9,$F6,$2C,$E1,$A4
	.byte $E1,$9D,$F4,$1D,$37,$A5,$5C,$4F
	.byte $9E,$F4,$21,$2C,$E5,$57,$50,$C1
	.byte $AA,$F4,$23,$2B,$E5,$00,$61,$53
	.byte $F4,$1E,$36,$E6,$00,$5B,$F4,$00
	.byte $22,$2F,$E6,$00,$F3,$1D,$28,$37
	.byte $A8,$F3,$1E,$29,$29,$55,$62,$E3
	.byte $59,$57,$E1,$F3,$A4,$4E,$58,$5C
	.byte $60,$55,$55,$54,$F8,$60,$55,$47
	.byte $A3,$F5,$44,$53,$63,$50,$A5,$F5
	.byte $21,$30,$00,$4F,$E5,$F5,$23,$2B
	.byte $E1,$50,$E5,$F4,$44,$63,$A2,$E6
	.byte $F0,$C3,$52,$53,$63,$A3,$4F,$E4
	.byte $48,$F0,$5D,$5B,$59,$5C,$A4,$50
	.byte $E4,$4D,$F0,$A8,$4F,$E4,$4C,$F8
	.byte $51,$E4,$4D,$F8,$4F,$E4,$4C,$AB
	.byte $3C,$B2,$FE,$FE,$EB,$3E,$F2,$EA
	.byte $1D,$1F,$F2,$53,$53,$C3,$52,$53
	.byte $53,$46,$E2,$23,$35,$C5,$53,$52
	.byte $53,$52,$53,$53,$52,$52,$53,$52
	.byte $53,$C3,$52,$00,$58,$5D,$5A,$56
	.byte $57,$58,$51,$E2,$21,$2B,$59,$5C
	.byte $5D,$56,$56,$57,$5A,$58,$00,$59
	.byte $00,$5C,$58,$59,$A2,$57,$00,$E1
	.byte $A5,$E1,$4F,$E1,$1D,$37,$A6,$5B
	.byte $AC,$E5,$57,$59,$51,$E1,$21,$2C
	.byte $31,$57,$5A,$58,$57,$60,$C3,$55
	.byte $54,$62,$E8,$E4,$60,$55,$54,$54
	.byte $42,$29,$29,$2A,$55,$C3,$54,$47
	.byte $A4,$4D,$56,$E7,$5B,$5D,$56,$60
	.byte $47,$B0,$4E,$5A,$E7,$54,$54,$55
	.byte $4B,$B1,$4D,$A8,$B5,$4E,$E1,$5D
	.byte $5A,$E5,$F5,$45,$55,$54,$62,$E5
	.byte $E7,$3C,$ED,$A2,$3F,$4D,$57,$E4
	.byte $E7,$3E,$F0,$4E,$5C,$E4,$56,$E6
	.byte $44,$F1,$59,$E4,$A7,$4E,$F0,$4C
	.byte $57,$E4,$E7,$4C,$F1,$5A,$E4,$E7
	.byte $4E,$4A,$EF,$4D,$59,$E4,$E6,$44
	.byte $63,$4F,$EE,$44,$63,$A5,$E6,$4E
	.byte $00,$61,$52,$53,$4A,$EB,$4C,$5D
	.byte $E5,$E8,$00,$56,$5B,$61,$46,$EB
	.byte $A6,$E6,$45,$54,$54,$62,$00,$5A
	.byte $4F,$EA,$4D,$E6,$E6,$A2,$3F,$4E
	.byte $57,$59,$51,$EA,$4C,$56,$E5,$E9
	.byte $4D,$5D,$60,$47,$E6,$44,$C3,$53
	.byte $63,$E6,$E9,$4C,$00,$4F,$A7,$45
	.byte $54,$54,$55,$54,$55,$62,$E4,$E9
	.byte $4D,$5B,$51,$E7,$A6,$4E,$5A,$E3
	.byte $88,$89,$8A,$8B,$8C,$8D,$8E,$C1
	.byte $AD,$48,$63,$56,$61,$52,$46,$EB
	.byte $4C,$A4,$79,$7D,$81,$85,$79,$7D
	.byte $81,$C1,$A5,$4D,$A3,$57,$51,$EC
	.byte $58,$E3,$7A,$7E,$82,$86,$7A,$7E
	.byte $82,$C1,$A6,$49,$55,$54,$55,$62
	.byte $61,$4A,$EA,$4E,$5A,$E3,$90,$91
	.byte $92,$93,$94,$95,$96,$C1,$AE,$A3
	.byte $3F,$4E,$00,$61,$53,$52,$53,$53
	.byte $C3,$66,$5E,$E2,$4D,$56,$E3,$52
	.byte $46,$A9,$E1,$4D,$E1,$00,$60,$55
	.byte $54,$4B,$A6,$E1,$59,$E3,$00,$4F
	.byte $EA,$4E,$E2,$50,$A9,$4E,$58,$E3
	.byte $E1,$51,$EA,$4D,$5D,$5A,$51,$E9
	.byte $4D,$5C,$E3,$56,$50,$EA,$4C,$5C
	.byte $5B,$EA,$4E,$A4,$00,$61,$53,$4A
	.byte $E8,$4E,$00,$60,$4B,$E9,$4C,$E4
	.byte $55,$54,$54,$47,$E5,$48,$53,$52
	.byte $63,$5D,$50,$AA,$E1,$5D,$E3,$00
	.byte $3D,$A7,$4C,$5D,$00,$5C,$56,$EB
	.byte $4E,$E4,$E1,$3C,$E7,$4E,$A4,$EB
	.byte $4C,$59,$E3,$E8,$44,$63,$59,$E2
	.byte $59,$4F,$EA,$4E,$5B,$5B,$59,$5B
	.byte $E1,$3E,$E6,$49,$54,$55,$62,$E1
	.byte $00,$50,$EA,$45,$55,$54,$55,$54
	.byte $E1,$64,$E6,$A2,$3F,$4C,$56,$E1
	.byte $61,$46,$E9,$6C,$A4,$52,$50,$E9
	.byte $4D,$A2,$59,$4F,$E9,$6B,$E4,$00
	.byte $EB,$5A,$E1,$00,$EA,$6D,$E4,$58
	.byte $61,$C4,$53,$52,$C4,$53,$63,$58
	.byte $E2,$61,$53,$52,$53,$53,$C5,$52
	.byte $C4,$53,$52,$56,$A2,$5D,$5D,$57
	.byte $5B,$5B,$57,$5D,$5C,$A5,$5A,$5D
	.byte $00,$57,$58,$56,$A2,$5C,$5A,$59
	.byte $58,$00,$5A,$BE,$FF
level2_r8:
	.byte 48, 15
	.byte 255, 255, 255, 63
	.byte 0, 0, 0, 250
	.byte 0
	.byte 255
	.word level2_r8_t
	.word level2_r8_p
	.word level2_r8_e
level2_r9_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$FE,$00,$C0,$C4,$04,$00
	.byte $00,$00,$00,$00,$00,$10,$01,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$10,$7B,$00,$00
	.byte $00,$00,$00,$00,$20,$23,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$FE,$FE,$FE,$00,$00
	.byte $00,$00,$00,$A0,$00,$00,$00,$00
	.byte $00,$00,$00,$22,$00,$00,$FF
level2_r9_e:
	.byte $28,$10,$09,$08
	.byte $FE
	.byte $68,$C8,$01,$00
	.byte $FF
level2_r9_t:
	.byte $50,$C4,$4C,$5D,$D7,$51,$85,$58
	.byte $8D,$56,$58,$57,$5C,$5D,$5A,$57
	.byte $82,$5D,$50,$84,$49,$55,$62,$84
	.byte $5C,$56,$00,$A4,$5D,$60,$54,$A6
	.byte $55,$54,$54,$55,$61,$53,$4A,$82
	.byte $00,$00,$4C,$00,$5D,$57,$60,$A5
	.byte $55,$54,$55,$47,$CA,$54,$55,$4B
	.byte $84,$4E,$60,$55,$55,$47,$D2,$C7
	.byte $4E,$47,$D5,$52,$53,$47,$84,$E5
	.byte $D6,$60,$47,$C5,$65,$96,$50,$DD
	.byte $51,$9D,$9E,$50,$9D,$51,$9D,$9E
	.byte $4F,$9D,$50,$9D,$4F,$9D,$9E,$61
	.byte $4A,$9C,$00,$61,$53,$52,$53,$53
	.byte $46,$85,$A1,$A9,$A1,$8D,$A1,$8E
	.byte $A1,$8F,$A1,$88,$A1,$89,$A1,$AD
	.byte $8B,$C5,$58,$61,$A4,$53,$4A,$A1
	.byte $9C,$7C,$80,$A1,$84,$78,$7C,$A1
	.byte $A4,$8B,$82,$5B,$00,$60,$54,$55
	.byte $54,$54,$55,$55,$4B,$A1,$AB,$A1
	.byte $95,$A1,$96,$A1,$97,$A1,$90,$A1
	.byte $91,$A1,$AF,$8B,$60,$55,$54,$54
	.byte $47,$AE,$68,$8B,$4B,$DD,$DE,$9E
	.byte $9E,$53,$52,$4A,$6A,$6A,$6A,$98
	.byte $5A,$58,$61,$53,$53,$5E,$98,$00
	.byte $00,$00,$5B,$50,$C5,$3F,$A1,$A8
	.byte $A1,$8C,$A1,$8D,$A1,$8E,$A1,$8F
	.byte $A1,$AD,$8D,$83,$00,$61,$52,$52
	.byte $4A,$83,$A1,$9E,$7A,$7E,$A1,$82
	.byte $A1,$86,$A1,$A6,$8B,$3F,$44,$84
	.byte $00,$60,$55,$47,$83,$A1,$9F,$7B
	.byte $7F,$A1,$83,$A1,$87,$A1,$A7,$8C
	.byte $4D,$83,$60,$55,$4B,$C4,$3F,$A1
	.byte $98,$78,$7C,$80,$A1,$84,$A0,$8D
	.byte $82,$5A,$51,$C6,$3F,$A1,$AA,$A1
	.byte $94,$A1,$95,$A1,$96,$A1,$97,$A1
	.byte $AF,$8C,$4E,$60,$54,$54,$47,$86
	.byte $00,$A6,$68,$89,$3F,$48,$53,$63
	.byte $51,$DA,$3F,$4D,$00,$9E,$4F,$9B
	.byte $4C,$5C,$61,$4A,$9A,$4E,$59,$00
	.byte $61,$53,$46,$98,$4D,$56,$00,$00
	.byte $60,$4B,$94,$3F,$48,$52,$53,$63
	.byte $00,$82,$4F,$D5,$3F,$4C,$56,$59
	.byte $00,$00,$00,$60,$47,$91,$3F,$48
	.byte $52,$52,$52,$63,$57,$58,$5D,$5B
	.byte $00,$51,$D2,$3F,$49,$54,$54,$54
	.byte $55,$55,$54,$54,$62,$5C,$93,$C8
	.byte $3F,$4E,$5A,$4F,$9B,$4D,$00,$61
	.byte $46,$9A,$4C,$00,$00,$61,$4A,$9A
	.byte $82,$00,$61,$53,$46,$97,$4E,$83
	.byte $00,$00,$61,$A4,$52,$53,$52,$53
	.byte $52,$52,$53,$53,$46,$84,$3F,$48
	.byte $A5,$53,$63,$85,$00,$56,$56,$5D
	.byte $5B,$58,$00,$58,$5A,$58,$5D,$00
	.byte $50,$85,$4C,$00,$58,$00,$5C,$59
	.byte $00,$56,$58,$00,$5A,$59,$57,$CA
	.byte $5C,$51,$85,$49,$54,$54,$55,$55
	.byte $62,$00,$54,$54,$55,$A4,$54,$55
	.byte $62,$87,$5A,$4F,$84,$C5,$3F,$22
	.byte $2C,$C8,$4D,$5B,$86,$00,$50,$8B
	.byte $2F,$87,$E4,$55,$62,$59,$85,$60
	.byte $47,$8A,$21,$33,$87,$00,$00,$49
	.byte $55,$62,$5C,$83,$51,$CA,$3F,$23
	.byte $31,$89,$00,$00,$49,$62,$82,$60
	.byte $4B,$8A,$74,$22,$2D,$8B,$00,$45
	.byte $62,$60,$47,$C8,$44,$53,$28,$27
	.byte $37,$00,$8C,$00,$4E,$51,$C9,$4D
	.byte $C5,$8B,$44,$52,$63,$4F,$8F,$FF
level2_r9:
	.byte 60, 0
	.byte 64, 255, 255, 65
	.byte 248, 0, 0, 6
	.byte 6
	.byte 255
	.word level2_r9_t
	.word level2_r9_p
	.word level2_r9_e
level2_r9b_p:
	.byte $00,$40,$04,$00,$00,$00,$00,$00
	.byte $00,$18,$01,$00,$20,$22,$00,$00
	.byte $A2,$00,$00,$00,$00,$00,$00,$00
	.byte $80,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $88,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$80,$00,$00,$00,$00,$02,$00
	.byte $00,$A8,$00,$00,$00,$00,$00,$00
	.byte $00,$A2,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$20,$AA,$00
	.byte $00,$FF
level2_r9b_e:
	.byte $98,$80,$01,$00
	.byte $FF
level2_r9b_t:
	.byte $DE,$9E,$8C,$3C,$91,$8F,$3C,$8E
	.byte $98,$1D,$27,$27,$28,$27,$27,$8C
	.byte $3E,$82,$3E,$88,$22,$32,$2D,$32
	.byte $30,$30,$8C,$48,$52,$53,$52,$52
	.byte $52,$53,$52,$A4,$53,$63,$C5,$8B
	.byte $1D,$63,$00,$5C,$56,$5A,$5D,$59
	.byte $57,$5A,$00,$5B,$57,$C6,$87,$43
	.byte $28,$27,$53,$63,$00,$00,$58,$5A
	.byte $00,$58,$CC,$87,$00,$23,$31,$00
	.byte $00,$56,$60,$54,$54,$54,$55,$62
	.byte $56,$59,$89,$88,$21,$2C,$00,$5B
	.byte $60,$4B,$C4,$49,$54,$54,$62,$88
	.byte $88,$23,$33,$57,$5C,$51,$C8,$4C
	.byte $56,$5D,$58,$59,$56,$00,$5A,$58
	.byte $87,$44,$63,$00,$57,$00,$89,$45
	.byte $54,$A7,$55,$87,$45,$54,$62,$00
	.byte $00,$50,$88,$C9,$87,$00,$00,$1E
	.byte $62,$00,$63,$4A,$89,$44,$53,$53
	.byte $53,$52,$52,$52,$89,$00,$4E,$00
	.byte $00,$61,$4A,$88,$4C,$59,$58,$00
	.byte $56,$58,$58,$88,$48,$52,$63,$82
	.byte $5D,$50,$88,$4E,$59,$C5,$88,$49
	.byte $54,$62,$59,$60,$55,$55,$66,$5E
	.byte $83,$48,$52,$53,$63,$C6,$88,$00
	.byte $00,$4C,$56,$51,$C7,$4C,$5B,$5B
	.byte $C7,$8A,$4D,$00,$61,$46,$86,$4D
	.byte $58,$C8,$87,$48,$53,$52,$63,$5A
	.byte $60,$4B,$86,$4E,$5B,$88,$87,$4D
	.byte $5A,$56,$5A,$5B,$51,$C7,$4D,$00
	.byte $57,$87,$87,$1E,$36,$30,$00,$00
	.byte $61,$53,$53,$66,$5E,$83,$49,$55
	.byte $55,$62,$86,$87,$00,$21,$32,$5A
	.byte $00,$00,$56,$4F,$C8,$4D,$86,$88
	.byte $4D,$5B,$83,$60,$47,$89,$56,$85
	.byte $89,$58,$59,$00,$60,$4B,$C9,$4D
	.byte $00,$56,$84,$88,$23,$30,$82,$50
	.byte $CA,$45,$54,$54,$62,$83,$87,$1D
	.byte $37,$2E,$00,$5A,$4F,$8A,$00,$00
	.byte $00,$4D,$57,$82,$87,$4C,$5B,$5B
	.byte $59,$58,$8E,$21,$33,$82,$87,$49
	.byte $62,$00,$5C,$59,$8E,$22,$32,$82
	.byte $87,$00,$21,$33,$5C,$58,$8E,$4C
	.byte $58,$00,$57,$88,$22,$2D,$58,$56
	.byte $51,$8D,$45,$55,$55,$54,$89,$31
	.byte $5D,$57,$50,$8D,$6C,$00,$00,$00
	.byte $88,$21,$31,$5A,$8F,$6B,$83,$86
	.byte $1D,$27,$37,$2C,$57,$5B,$8E,$6D
	.byte $83,$86,$1E,$36,$32,$2E,$00,$00
	.byte $61,$4A,$8B,$44,$53,$53,$53,$52
	.byte $86,$00,$22,$31,$2F,$56,$00,$5D
	.byte $61,$52,$53,$53,$53,$4A,$86,$4D
	.byte $57,$5C,$59,$5D,$87,$1E,$36,$2D
	.byte $56,$5C,$00,$57,$59,$5A,$00,$5A
	.byte $61,$52,$52,$53,$53,$52,$53,$63
	.byte $C4,$87,$00,$1E,$2A,$55,$55,$62
	.byte $5A,$59,$00,$58,$58,$59,$58,$5B
	.byte $00,$5B,$59,$56,$59,$84,$88,$C4
	.byte $49,$55,$55,$55,$54,$54,$54,$55
	.byte $55,$A4,$54,$62,$84,$8C,$CD,$1E
	.byte $36,$83,$99,$00,$1E,$36,$33,$2D
	.byte $9A,$00,$1E,$29,$29,$9B,$00,$00
	.byte $00,$FF
level2_r9b:
	.byte 44, 0
	.byte 255, 66, 255, 255
	.byte 0, 8, 0, 0
	.byte 6
	.byte 255
	.word level2_r9b_t
	.word level2_r9b_p
	.word level2_r9b_e
level2_r10_p:
	.byte $00,$00,$00,$00,$00,$40,$DE,$54
	.byte $00,$00,$40,$B2,$9B,$04,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$80,$00,$00,$00,$00,$80
	.byte $00,$08,$00,$00,$00,$00,$08,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$20,$00
	.byte $00,$28,$00,$2A,$00,$00,$28,$00
	.byte $20,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$08,$00,$00,$00,$00,$08,$00
	.byte $00,$0E,$00,$00,$00,$60,$04,$00
	.byte $00,$2A,$20,$0E,$00,$00,$2A,$10
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$20,$00,$00,$28,$00,$2A,$00
	.byte $00,$28,$00,$20,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$08,$00,$00,$00
	.byte $00,$08,$00,$00,$0B,$00,$00,$00
	.byte $40,$02,$00,$00,$2A,$E0,$0C,$00
	.byte $00,$2A,$F0,$0F,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$FF
level2_r10_e:
	.byte $90,$00,$89,$20
	.byte $FE
	.byte $10,$F0,$01,$00
	.byte $20,$90,$89,$18
	.byte $FF
level2_r10_t:
	.byte $28,$3C,$A4,$58,$A3,$5D,$5C,$57
	.byte $B0,$5C,$5D,$5A,$E3,$60,$55,$55
	.byte $54,$55,$C3,$54,$62,$ED,$5A,$60
	.byte $54,$55,$54,$E1,$60,$55,$4B,$A7
	.byte $4D,$56,$E8,$5D,$5B,$60,$55,$54
	.byte $4B,$A3,$57,$50,$A9,$4C,$E8,$60
	.byte $55,$55,$4B,$A6,$5C,$EA,$4E,$00
	.byte $5B,$E5,$57,$4F,$A9,$5B,$EA,$49
	.byte $55,$62,$E5,$5D,$50,$E9,$00,$4F
	.byte $E9,$6C,$3F,$4D,$57,$E4,$57,$51
	.byte $E9,$57,$51,$C1,$A9,$8B,$8C,$C1
	.byte $AC,$E5,$6B,$E1,$4C,$A6,$4F,$E7
	.byte $44,$4A,$5A,$50,$98,$84,$78,$A0
	.byte $E5,$00,$E1,$45,$62,$E4,$5C,$50
	.byte $E7,$4D,$61,$58,$4F,$99,$85,$79
	.byte $C1,$A1,$E6,$00,$3F,$4D,$5C,$E3
	.byte $58,$E8,$49,$54,$E2,$9A,$86,$7A
	.byte $C1,$A2,$E8,$45,$62,$E3,$00,$E8
	.byte $A2,$E1,$51,$9B,$87,$7B,$C1,$A3
	.byte $E7,$00,$3F,$4E,$E3,$5D,$EA,$00
	.byte $4F,$9C,$84,$78,$C1,$A4,$E9,$4D
	.byte $5D,$E2,$59,$4F,$E9,$5D,$51,$9D
	.byte $85,$79,$C1,$A5,$EA,$A4,$50,$E9
	.byte $5A,$50,$9E,$86,$7A,$C1,$A6,$E4
	.byte $1D,$C3,$28,$52,$63,$E1,$58,$5D
	.byte $E1,$61,$46,$E8,$56,$E1,$9F,$87
	.byte $7B,$C1,$A7,$E4,$1E,$29,$2A,$2A
	.byte $55,$54,$55,$54,$55,$54,$62,$50
	.byte $E8,$00,$51,$98,$84,$78,$A0,$E4
	.byte $A8,$6C,$3F,$4C,$61,$46,$E7,$5C
	.byte $E1,$99,$85,$79,$C1,$A1,$EC,$00
	.byte $E2,$00,$61,$53,$4A,$E5,$59,$50
	.byte $9A,$86,$7A,$C1,$A2,$EE,$49,$62
	.byte $00,$59,$61,$52,$4A,$E3,$5A,$4F
	.byte $9B,$87,$7B,$C1,$A3,$ED,$00,$3F
	.byte $4C,$5A,$00,$5D,$5B,$61,$53,$66
	.byte $5E,$5D,$51,$9C,$84,$78,$C1,$A4
	.byte $48,$52,$4A,$EC,$4D,$5B,$60,$C3
	.byte $55,$47,$A2,$5A,$4F,$9D,$85,$79
	.byte $C1,$A5,$4C,$5B,$61,$52,$46,$EA
	.byte $4C,$55,$47,$A6,$00,$51,$9E,$86
	.byte $7A,$C1,$A6,$4E,$60,$C3,$54,$66
	.byte $66,$5E,$E7,$C1,$E5,$A8,$5D,$4F
	.byte $9F,$87,$7B,$C1,$A7,$4D,$47,$AC
	.byte $E1,$67,$E8,$00,$50,$98,$84,$78
	.byte $A0,$67,$AD,$E1,$C1,$E5,$E8,$5C
	.byte $51,$99,$85,$79,$C1,$A1,$C1,$E5
	.byte $EE,$67,$E8,$59,$4F,$C1,$AA,$93
	.byte $94,$C1,$AF,$67,$E5,$1D,$28,$27
	.byte $27,$52,$53,$52,$52,$53,$51,$E8
	.byte $5A,$51,$A4,$E6,$1E,$2A,$29,$2A
	.byte $55,$54,$54,$62,$5A,$E9,$54,$4B
	.byte $E4,$C1,$E5,$E5,$A6,$3F,$4E,$00
	.byte $50,$E8,$A6,$ED,$4D,$57,$4F,$E4
	.byte $48,$52,$46,$E1,$F4,$59,$E5,$4C
	.byte $00,$61,$52,$E6,$4D,$4A,$E7,$44
	.byte $C3,$53,$63,$58,$51,$E4,$4D,$59
	.byte $5A,$60,$46,$E5,$4E,$50,$E7,$49
	.byte $55,$54,$54,$55,$54,$4B,$E4,$45
	.byte $54,$55,$50,$50,$E5,$49,$4F,$E7
	.byte $AE,$65,$E6,$3F,$4E,$4A,$F4,$00
	.byte $61,$46,$E5,$4D,$4F,$F5,$5A,$50
	.byte $E5,$4E,$51,$F4,$64,$E1,$4F,$ED
	.byte $44,$53,$53,$52,$53,$52,$53,$52
	.byte $C3,$53,$52,$52,$53,$50,$00,$61
	.byte $53,$52,$52,$53,$52,$63,$61,$53
	.byte $46,$E4,$4E,$56,$57,$5C,$A2,$58
	.byte $A2,$5C,$56,$00,$59,$5B,$61,$E1
	.byte $5A,$59,$59,$5B,$5D,$00,$5A,$5B
	.byte $5B,$61,$52,$53,$53,$52,$63,$AE
	.byte $5B,$5C,$00,$5A,$5C,$A2,$57,$57
	.byte $00,$5A,$5D,$56,$B1,$55,$55,$54
	.byte $55,$55,$54,$C3,$55,$54,$C3,$55
	.byte $62,$5B,$E7,$5C,$57,$5C,$58,$E4
	.byte $AC,$74,$21,$2E,$E3,$5A,$58,$60
	.byte $55,$54,$55,$54,$62,$E4,$ED,$1E
	.byte $36,$33,$5D,$60,$55,$54,$4B,$A3
	.byte $3F,$4E,$5B,$E3,$EC,$00,$3F,$4D
	.byte $54,$55,$4B,$A6,$E1,$45,$62,$E3
	.byte $E4,$64,$E9,$65,$AA,$3F,$49,$62
	.byte $E2,$E4,$C1,$E5,$E8,$AD,$3F,$4C
	.byte $59,$56,$E4,$4C,$4A,$F5,$49,$54
	.byte $62,$C3,$53,$52,$63,$61,$4A,$F3
	.byte $A2,$3F,$4E,$55,$54,$54,$62,$56
	.byte $57,$61,$53,$4A,$EA,$1D,$27,$1F
	.byte $E7,$4C,$A2,$74,$22,$2E,$2C,$00
	.byte $59,$61,$C3,$53,$52,$5E,$E5,$22
	.byte $32,$26,$E8,$E3,$21,$31,$2E,$59
	.byte $00,$57,$5C,$A2,$C1,$E5,$A6,$23
	.byte $2C,$25,$E7,$4E,$E3,$1E,$2A,$36
	.byte $5A,$59,$5D,$C3,$57,$4F,$E6,$1E
	.byte $29,$20,$E7,$4D,$E2,$A2,$74,$21
	.byte $58,$00,$5C,$5A,$5C,$58,$E7,$A7
	.byte $3F,$44,$52,$63,$E4,$3F,$49,$62
	.byte $57,$E1,$5C,$5A,$57,$50,$EE,$4C
	.byte $5D,$00,$E4,$00,$3F,$4C,$56,$A2
	.byte $E1,$5B,$61,$46,$ED,$45,$62,$E1
	.byte $E6,$4E,$E2,$57,$5B,$A2,$51,$EC
	.byte $00,$3F,$4D,$57,$E6,$45,$62,$56
	.byte $00,$57,$5B,$5A,$50,$EF,$58,$E5
	.byte $00,$3F,$4D,$E1,$5A,$5D,$E1,$00
	.byte $51,$EE,$4E,$5A,$E8,$5C,$00,$5A
	.byte $E1,$58,$61,$53,$46,$EC,$4D,$5D
	.byte $E7,$4E,$A2,$5D,$E1,$5B,$57,$60
	.byte $4B,$EC,$4E,$E1,$E8,$5C,$E1,$59
	.byte $00,$5C,$00,$4F,$C1,$A8,$8E,$8F
	.byte $88,$89,$8A,$C1,$AC,$E6,$4D,$57
	.byte $E5,$3F,$48,$63,$00,$56,$5D,$60
	.byte $54,$55,$4B,$9E,$82,$86,$7A,$7E
	.byte $82,$C1,$A6,$E4,$3F,$48,$63,$00
	.byte $E6,$4E,$57,$5D,$E1,$58,$4F,$A3
	.byte $9F,$83,$87,$7B,$7F,$83,$C1,$A7
	.byte $E5,$4D,$57,$E1,$E3,$74,$48,$52
	.byte $63,$00,$56,$E1,$5D,$51,$E3,$98
	.byte $80,$84,$78,$7C,$80,$A0,$E4,$48
	.byte $63,$A2,$E4,$4E,$5C,$5C,$E1,$58
	.byte $00,$60,$47,$E3,$99,$81,$85,$79
	.byte $7D,$81,$C1,$A1,$E4,$4D,$A3,$E4
	.byte $4C,$57,$57,$56,$57,$60,$47,$A4
	.byte $9A,$82,$86,$7A,$7E,$82,$C1,$A2
	.byte $E4,$4C,$5D,$E2,$E4,$4E,$00,$5D
	.byte $5C,$5C,$4F,$A5,$C1,$AA,$96,$97
	.byte $90,$91,$92,$C1,$AE,$E4,$4D,$57
	.byte $E2,$74,$1D,$28,$28,$37,$2B,$E1
	.byte $5B,$60,$47,$E5,$AB,$45,$54,$62
	.byte $59,$E1,$21,$2C,$30,$33,$2E,$5A
	.byte $00,$50,$B2,$3F,$4D,$56,$52,$63
	.byte $5C,$00,$5C,$A2,$59,$F4,$4E,$5A
	.byte $C3,$55,$54,$54,$55,$54,$55,$4B
	.byte $F3,$4C,$5B,$BA,$3F,$48,$63,$57
	.byte $FB,$4C,$00,$5D,$F3,$48,$52,$53
	.byte $C5,$66,$54,$54,$62,$F3,$49,$55
	.byte $47,$A7,$4D,$F3,$A6,$64,$E3,$45
	.byte $F9,$4D,$4A,$E2,$00,$C3,$52,$53
	.byte $4A,$F5,$50,$E3,$A2,$59,$5A,$61
	.byte $53,$52,$53,$53,$52,$53,$C3,$52
	.byte $53,$52,$52,$53,$52,$53,$52,$53
	.byte $53,$52,$52,$54,$54,$C3,$53,$FF
level2_r10:
	.byte 40, 7
	.byte 255, 69, 255, 255
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r10_t
	.word level2_r10_p
	.word level2_r10_e
level2_r10__p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$48,$00,$00
	.byte $00,$00,$01,$00,$00,$00,$00,$C7
	.byte $00,$00,$00,$00,$26,$00,$00,$00
	.byte $00,$10,$00,$00,$00,$00,$8E,$00
	.byte $00,$00,$2A,$8C,$28,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$A8
	.byte $00,$00,$00,$00,$A8,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$A8,$00,$00,$00,$00,$A8
	.byte $00,$FF
level2_r10__e:
	.byte $40,$38,$7F
	.byte $90,$28,$7F
	.byte $E0,$18,$7F
	.byte $FE
	.byte $18,$20,$09,$10
	.byte $FF
level2_r10__t:
	.byte $28,$3C,$B1,$5D,$59,$A7,$5A,$5A
	.byte $A2,$E7,$58,$57,$E1,$57,$57,$E1
	.byte $5B,$5B,$60,$55,$54,$55,$62,$E4
	.byte $60,$55,$55,$54,$54,$62,$E2,$5C
	.byte $E1,$58,$5D,$60,$54,$C5,$55,$54
	.byte $55,$4B,$A3,$4E,$E3,$60,$4B,$A4
	.byte $4D,$E1,$60,$54,$54,$55,$54,$47
	.byte $AC,$E1,$57,$5C,$58,$51,$A5,$4C
	.byte $56,$51,$B1,$49,$62,$00,$57,$50
	.byte $E6,$60,$47,$F1,$00,$4E,$60,$54
	.byte $4B,$E5,$4D,$51,$B3,$4C,$50,$A7
	.byte $49,$4F,$EC,$3F,$64,$EE,$00,$51
	.byte $ED,$4D,$46,$E4,$4D,$E9,$4F,$ED
	.byte $4E,$61,$4A,$E3,$4E,$E5,$40,$E3
	.byte $51,$ED,$4C,$54,$4B,$E4,$51,$E4
	.byte $22,$1F,$E2,$4F,$ED,$67,$A5,$4D
	.byte $61,$46,$E3,$1E,$25,$E2,$50,$EB
	.byte $3F,$48,$51,$E6,$00,$4F,$E3,$00
	.byte $C1,$E6,$E2,$ED,$4E,$4B,$E5,$45
	.byte $54,$E5,$41,$E2,$ED,$C1,$E5,$A8
	.byte $C1,$E5,$E4,$A3,$51,$F5,$67,$E7
	.byte $50,$EA,$3F,$44,$4F,$E8,$65,$E7
	.byte $EC,$4C,$51,$C1,$A9,$8F,$88,$89
	.byte $8A,$8B,$8C,$8D,$8E,$8F,$88,$89
	.byte $8A,$C1,$AC,$E2,$4F,$EB,$49,$4F
	.byte $9A,$86,$7A,$7E,$82,$86,$7A,$7E
	.byte $82,$86,$7A,$7E,$82,$C1,$A2,$E2
	.byte $EB,$00,$3F,$C1,$E5,$9B,$87,$7B
	.byte $7F,$83,$87,$7B,$7F,$83,$87,$7B
	.byte $7F,$83,$C1,$A3,$E2,$50,$ED,$9C
	.byte $84,$78,$7C,$80,$84,$78,$7C,$80
	.byte $84,$78,$7C,$80,$C1,$A4,$E2,$51
	.byte $ED,$9D,$85,$79,$7D,$81,$85,$79
	.byte $7D,$81,$85,$79,$7D,$81,$C1,$A5
	.byte $E2,$50,$EC,$67,$C1,$AA,$97,$90
	.byte $91,$92,$93,$94,$95,$96,$97,$90
	.byte $91,$92,$C1,$AF,$E2,$EE,$B0,$F7
	.byte $64,$E6,$F7,$67,$E6,$4F,$EA,$3F
	.byte $44,$51,$E8,$48,$51,$E3,$40,$E2
	.byte $EC,$4E,$E5,$64,$E3,$4E,$4F,$E3
	.byte $C1,$E6,$E2,$50,$E9,$3F,$48,$63
	.byte $50,$E4,$67,$E7,$43,$24,$E2,$EB
	.byte $4E,$00,$4F,$E4,$C1,$E5,$E3,$4C
	.byte $50,$E2,$00,$C1,$E6,$E2,$51,$EA
	.byte $45,$62,$EA,$51,$E3,$65,$E2,$61
	.byte $46,$E8,$00,$3F,$4C,$51,$E4,$65
	.byte $E3,$4E,$E4,$A3,$5B,$50,$EA,$4D
	.byte $50,$E4,$A4,$4D,$E7,$56,$61,$46
	.byte $E9,$4C,$4F,$E9,$50,$E6,$60,$54
	.byte $4B,$F3,$4E,$51,$E6,$4B,$AA,$E1
	.byte $4E,$50,$E8,$4D,$61,$52,$4A,$E4
	.byte $AB,$E2,$61,$52,$4A,$E7,$A2,$4F
	.byte $E4,$E3,$48,$4A,$E8,$A2,$61,$53
	.byte $52,$52,$53,$53,$52,$63,$E7,$E3
	.byte $4C,$61,$53,$46,$E5,$4C,$E2,$00
	.byte $56,$57,$00,$59,$58,$59,$5D,$E2
	.byte $61,$52,$52,$53,$53,$C3,$53,$63
	.byte $00,$59,$61,$C5,$52,$63,$E3,$AA
	.byte $5D,$58,$5A,$5B,$B0,$5C,$AD,$EA
	.byte $59,$E3,$60,$55,$55,$62,$EC,$5A
	.byte $E4,$5C,$5B,$E1,$60,$54,$54,$55
	.byte $62,$56,$51,$A2,$4E,$EC,$E4,$60
	.byte $54,$55,$54,$47,$A3,$4C,$60,$4B
	.byte $E2,$4C,$58,$EB,$58,$E3,$51,$A7
	.byte $4D,$51,$A3,$49,$55,$62,$E3,$5C
	.byte $5B,$5C,$57,$E3,$59,$E3,$50,$E7
	.byte $49,$E4,$A2,$4D,$58,$E1,$60,$55
	.byte $55,$54,$55,$62,$E2,$62,$5A,$E1
	.byte $58,$63,$53,$5E,$E5,$00,$C1,$E5
	.byte $E5,$4C,$59,$60,$4B,$A4,$4D,$5A
	.byte $E1,$4D,$56,$E1,$60,$55,$47,$A7
	.byte $67,$E5,$4E,$57,$4F,$A5,$49,$62
	.byte $E1,$E1,$A2,$51,$A9,$C1,$E5,$E5
	.byte $49,$62,$50,$E5,$00,$4D,$E1,$4C
	.byte $5D,$56,$F0,$00,$4D,$61,$5E,$E5
	.byte $49,$55,$E1,$00,$60,$47,$E8,$44
	.byte $63,$46,$E6,$47,$A8,$4E,$E1,$4F
	.byte $A9,$4D,$60,$4B,$E5,$C1,$E5,$A9
	.byte $E1,$58,$50,$E9,$4C,$47,$A6,$4D
	.byte $46,$E8,$4C,$60,$47,$E9,$65,$A7
	.byte $E1,$54,$5E,$E7,$E1,$50,$B2,$C1
	.byte $E5,$A7,$48,$52,$4D,$47,$F1,$48
	.byte $63,$5E,$E6,$4E,$5A,$C1,$E5,$B2
	.byte $4D,$50,$A7,$4C,$58,$65,$F2,$4E
	.byte $E5,$48,$52,$52,$63,$00,$AE,$64
	.byte $E5,$4F,$E4,$49,$62,$A3,$EE,$4C
	.byte $46,$E3,$4D,$E5,$00,$45,$62,$E2
	.byte $ED,$48,$63,$4B,$E3,$4C,$54,$5E
	.byte $E4,$00,$4E,$57,$E1,$ED,$4D,$50
	.byte $A4,$65,$A7,$4D,$5B,$E1,$64,$EC
	.byte $4E,$61,$52,$4A,$E2,$A8,$4E,$57
	.byte $E1,$C1,$E5,$ED,$60,$55,$4B,$EA
	.byte $4C,$5C,$E1,$ED,$4C,$47,$AC,$4E
	.byte $5B,$E1,$4D,$46,$EB,$65,$AD,$4C
	.byte $58,$E1,$4C,$50,$EB,$A6,$64,$E7
	.byte $21,$32,$E1,$E1,$51,$F1,$4C,$46
	.byte $E6,$22,$31,$E1,$F3,$4E,$51,$E6
	.byte $21,$30,$E1,$E1,$4F,$EB,$64,$E5
	.byte $4D,$61,$4A,$E5,$22,$2C,$E1,$4D
	.byte $61,$46,$EA,$67,$E5,$4C,$60,$54
	.byte $5E,$E4,$23,$32,$E1,$4C,$58,$61
	.byte $53,$5E,$EE,$4E,$4F,$A6,$22,$2E
	.byte $E1,$4D,$00,$60,$47,$A9,$4D,$4A
	.byte $E4,$4D,$50,$E5,$48,$63,$A2,$4C
	.byte $E1,$51,$AA,$4E,$4F,$E4,$4C,$61
	.byte $46,$E4,$4E,$5B,$E2,$4D,$5C,$4F
	.byte $E9,$44,$63,$51,$E5,$00,$61,$53
	.byte $52,$53,$53,$63,$E3,$4C,$56,$61
	.byte $53,$52,$52,$53,$52,$53,$46,$E2
	.byte $4D,$5C,$50,$E2,$48,$53,$63,$E1
	.byte $5B,$5A,$59,$5B,$5B,$A4,$E1,$58
	.byte $5D,$00,$5D,$56,$A2,$5A,$61,$52
	.byte $53,$63,$58,$4F,$E2,$4D,$AC,$4E
	.byte $AB,$5B,$00,$61,$52,$53,$63,$5A
	.byte $EB,$63,$EB,$A3,$5C,$58,$AD,$58
	.byte $5D,$ED,$5A,$5A,$ED,$FF
level2_r10_:
	.byte 40, 7
	.byte 255, 70, 255, 255
	.byte 0, 8, 0, 0
	.byte 0
	.byte 255
	.word level2_r10__t
	.word level2_r10__p
	.word level2_r10__e
level2_r2__p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FF
level2_r2__e:
	.byte $FF
level2_r2__t:
	.byte $5C,$56,$00,$5D,$5C,$5D,$00,$5D
	.byte $00,$5D,$56,$00,$59,$59,$59,$00
	.byte $5D,$5D,$5A,$00,$57,$5B,$57,$5B
	.byte $5A,$58,$59,$58,$00,$5B,$54,$55
	.byte $54,$55,$54,$55,$55,$54,$54,$55
	.byte $54,$54,$54,$55,$54,$54,$55,$55
	.byte $55,$54,$54,$55,$54,$55,$54,$54
	.byte $55,$55,$55,$54,$DE,$9E,$9E,$9E
	.byte $53,$53,$52,$52,$53,$A4,$52,$53
	.byte $52,$53,$52,$53,$52,$A4,$53,$52
	.byte $53,$52,$52,$53,$52,$52,$46,$83
	.byte $00,$5D,$00,$00,$60,$55,$54,$62
	.byte $5A,$5D,$00,$00,$5B,$00,$58,$60
	.byte $55,$54,$62,$58,$5D,$58,$58,$5D
	.byte $60,$54,$4B,$83,$00,$00,$00,$58
	.byte $51,$00,$00,$49,$55,$62,$82,$00
	.byte $00,$00,$51,$00,$00,$4D,$57,$00
	.byte $00,$00,$5D,$51,$C5,$83,$5B,$4F
	.byte $82,$00,$00,$4E,$58,$84,$50,$83
	.byte $C4,$56,$50,$85,$84,$50,$84,$4C
	.byte $C5,$61,$52,$52,$63,$84,$5A,$86
	.byte $83,$00,$61,$4A,$83,$4E,$5B,$84
	.byte $00,$5C,$5A,$C6,$61,$53,$46,$83
	.byte $84,$58,$51,$83,$45,$54,$54,$54
	.byte $62,$82,$00,$00,$00,$56,$00,$5D
	.byte $5A,$00,$00,$58,$61,$46,$82,$84
	.byte $56,$84,$C4,$4E,$5C,$58,$82,$60
	.byte $54,$55,$54,$55,$55,$55,$54,$55
	.byte $4B,$82,$84,$00,$50,$87,$45,$55
	.byte $62,$00,$60,$47,$CB,$8D,$00,$00
	.byte $4C,$5D,$50,$CC,$84,$59,$83,$48
	.byte $53,$52,$53,$52,$52,$53,$63,$00
	.byte $8D,$84,$00,$61,$52,$52,$63,$5B
	.byte $57,$5C,$00,$58,$57,$00,$00,$61
	.byte $53,$52,$52,$4A,$88,$85,$00,$5D
	.byte $CB,$5A,$5A,$57,$61,$53,$53,$53
	.byte $4A,$84,$86,$D0,$5C,$00,$59,$61
	.byte $4A,$83,$96,$00,$00,$00,$5B,$51
	.byte $83,$99,$58,$50,$83,$99,$60,$55
	.byte $5E,$82,$98,$60,$4B,$C4,$97,$58
	.byte $4F,$C5,$97,$5B,$51,$85,$97,$00
	.byte $86,$98,$61,$46,$84,$98,$60,$47
	.byte $84,$98,$51,$C5,$98,$4F,$85,$97
	.byte $57,$61,$52,$4A,$83,$FF
level2_r2_:
	.byte 32, 0
	.byte 71, 72, 255, 255
	.byte 248, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r2__t
	.word level2_r2__p
	.word level2_r2__e
level2_r2_p:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
	.byte $FE,$FF
level2_r2_e:
	.byte $FF
level2_r2_t:
	.byte $DA,$4C,$5A,$59,$5A,$9A,$4E,$59
	.byte $5B,$5A,$9B,$58,$58,$5A,$9A,$4C
	.byte $5B,$5C,$58,$9A,$4E,$5B,$59,$5D
	.byte $9A,$4C,$59,$5D,$5C,$9A,$4E,$56
	.byte $57,$00,$9B,$59,$5B,$58,$9A,$4C
	.byte $58,$56,$00,$9A,$4D,$5A,$00,$5A
	.byte $9B,$00,$00,$57,$9A,$4C,$57,$00
	.byte $5B,$9A,$4D,$00,$00,$5A,$9A,$4E
	.byte $00,$56,$00,$9B,$57,$82,$9C,$00
	.byte $00,$9A,$4D,$58,$5B,$58,$9A,$4E
	.byte $5B,$58,$5C,$9A,$4C,$59,$5D,$5D
	.byte $9A,$4E,$59,$00,$00,$9B,$58,$5A
	.byte $00,$9B,$5A,$5C,$56,$9A,$4D,$00
	.byte $58,$00,$9C,$5D,$5B,$9A,$4E,$00
	.byte $00,$5A,$9A,$4D,$5C,$5A,$5D,$9A
	.byte $4E,$00,$00,$58,$9A,$4D,$5A,$57
	.byte $00,$9A,$4C,$56,$5B,$56,$9B,$5C
	.byte $5B,$5A,$9A,$4E,$5B,$5A,$5D,$9A
	.byte $4C,$5C,$57,$59,$9B,$59,$5D,$5C
	.byte $9B,$00,$00,$5B,$9A,$4E,$59,$00
	.byte $5C,$9A,$4C,$5D,$5D,$56,$9A,$4D
	.byte $00,$58,$58,$9A,$4C,$56,$57,$56
	.byte $9A,$4D,$00,$5C,$00,$9A,$45,$54
	.byte $54,$54,$FF
level2_r2:
	.byte 40, 192
	.byte 73, 255, 255, 255
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_r2_t
	.word level2_r2_p
	.word level2_r2_e
