level2_start_p:
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
level2_start_e:
	.byte $FF
level2_start_t:
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
level2_start:
	.byte 40, 0
	.byte 255, 255, 255, 1
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_start_t
	.word level2_start_p
	.word level2_start_e
level2_0_p:
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
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$AA,$0A,$00,$80
	.byte $80,$02,$00,$A8,$0A,$80,$0A,$00
	.byte $00,$00,$00,$00,$02,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$FF
level2_0_e:
	.byte $FF
level2_0_t:
	.byte $30,$2E,$BE,$FE,$FE,$FE,$FE,$FE
	.byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
	.byte $F0,$58,$E1,$59,$E2,$5B,$E2,$58
	.byte $E1,$59,$5B,$E1,$56,$EE,$54,$C3
	.byte $55,$54,$54,$C3,$55,$54,$55,$54
	.byte $54,$55,$54,$54,$EE,$B0,$FE,$FE
	.byte $EE,$53,$C3,$52,$53,$52,$52,$53
	.byte $52,$53,$52,$53,$52,$53,$52,$52
	.byte $EE,$5B,$58,$58,$00,$58,$5C,$56
	.byte $59,$60,$55,$55,$54,$54,$62,$5D
	.byte $57,$EE,$A6,$60,$54,$4B,$A4,$4E
	.byte $5B,$E1,$F3,$5A,$51,$A6,$49,$54
	.byte $55,$F3,$56,$50,$E6,$A3,$F3,$00
	.byte $61,$46,$E8,$F4,$00,$51,$E8,$F4
	.byte $60,$47,$E8,$F3,$5C,$51,$A9,$F3
	.byte $5B,$50,$E9,$F3,$5C,$EA,$F3,$00
	.byte $51,$E9,$F4,$61,$46,$E8,$F4,$5C
	.byte $4F,$E8,$F4,$60,$47,$E8,$F3,$57
	.byte $50,$A9,$F3,$5B,$4F,$E9,$F3,$00
	.byte $50,$E8,$44,$F3,$58,$4F,$E8,$45
	.byte $F3,$56,$50,$E8,$00,$F3,$00,$61
	.byte $52,$4A,$E7,$F4,$A2,$61,$53,$46
	.byte $E5,$F6,$5C,$5D,$50,$E5,$F6,$A2
	.byte $E6,$F7,$59,$51,$E4,$44,$F7,$57
	.byte $E5,$4D,$F7,$00,$4F,$E4,$4E,$F7
	.byte $5A,$E5,$4C,$F7,$00,$51,$E5,$5D
	.byte $51,$B4,$22,$2B,$A6,$00,$4F,$F5
	.byte $32,$E6,$E1,$50,$F5,$31,$E6,$59
	.byte $51,$F4,$21,$E7,$58,$F5,$23,$2E
	.byte $E6,$00,$61,$52,$4A,$F2,$22,$33
	.byte $E6,$E1,$A2,$61,$53,$4A,$F0,$21
	.byte $2F,$E6,$E3,$60,$55,$4B,$F0,$23
	.byte $32,$E6,$E2,$56,$51,$B2,$E1,$30
	.byte $E6,$E2,$5A,$F3,$1E,$36,$E6,$E2
	.byte $59,$61,$4A,$F1,$00,$23,$2C,$E5
	.byte $E2,$60,$55,$47,$F2,$1E,$36,$E5
	.byte $E1,$5B,$51,$B5,$22,$2C,$E4,$E1
	.byte $59,$F6,$21,$30,$E4,$5D,$00,$61
	.byte $52,$53,$4A,$F3,$2F,$E4,$54,$55
	.byte $55,$54,$55,$54,$5E,$F1,$22,$32
	.byte $E4,$B8,$23,$E5,$F9,$31,$E4,$F8
	.byte $22,$2F,$E4,$52,$4A,$ED,$6A,$6A
	.byte $E7,$21,$30,$E4,$5A,$61,$4A,$EB
	.byte $3F,$44,$46,$E7,$4C,$A5,$E1,$57
	.byte $61,$46,$EB,$4E,$4F,$E8,$5C,$E4
	.byte $54,$55,$54,$55,$5E,$EA,$45,$47
	.byte $E8,$A5,$B6,$44,$53,$63,$5D,$E4
	.byte $F6,$4C,$A7,$F6,$4D,$5B,$E6,$F6
	.byte $4E,$5A,$E6,$F6,$4D,$59,$E6,$F6
	.byte $4C,$57,$E6,$F6,$49,$62,$E6,$E4
	.byte $48,$52,$52,$53,$52,$53,$53,$4A
	.byte $EA,$00,$1E,$36,$E5,$E4,$4D,$00
	.byte $5C,$5D,$00,$60,$55,$54,$5E,$EA
	.byte $00,$1E,$36,$E4,$E5,$57,$5B,$00
	.byte $60,$47,$AF,$23,$33,$E3,$E4,$49
	.byte $62,$00,$59,$51,$B0,$21,$E4,$E4
	.byte $00,$4C,$E1,$5B,$50,$EC,$48,$53
	.byte $53,$28,$37,$A4,$E5,$4E,$E1,$57
	.byte $4F,$EC,$4D,$A2,$2F,$A5,$46,$E4
	.byte $4C,$E1,$5C,$ED,$45,$62,$E1,$A6
	.byte $4B,$E4,$4E,$57,$5D,$51,$EC,$00
	.byte $4D,$5C,$E6,$A5,$49,$62,$5C,$4F
	.byte $ED,$21,$2D,$E6,$E5,$00,$4D,$00
	.byte $51,$ED,$23,$2E,$E6,$E6,$4C,$5A
	.byte $4F,$ED,$22,$2F,$E6,$E7,$00,$EF
	.byte $31,$E6,$E6,$4D,$5A,$EE,$4D,$58
	.byte $E6,$52,$46,$E4,$4E,$EE,$44,$63
	.byte $5C,$E6,$00,$61,$52,$C3,$53,$63
	.byte $00,$61,$52,$53,$53,$52,$53,$53
	.byte $52,$4A,$E4,$4E,$A8,$58,$00,$57
	.byte $00,$56,$57,$A2,$5A,$57,$A3,$5D
	.byte $58,$00,$50,$E4,$4C,$58,$E7,$5B
	.byte $59,$AD,$57,$51,$E4,$4D,$5B,$E7
	.byte $00,$58,$ED,$00,$EE,$FF
level2_0:
	.byte 48, 15
	.byte 255, 255, 2, 255
	.byte 0, 0, 0, 0
	.byte 0
	.byte 255
	.word level2_0_t
	.word level2_0_p
	.word level2_0_e
