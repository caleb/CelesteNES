level2_d6_p:
	.byte $55,$51,$05,$00,$44,$44,$44,$04
	.byte $01,$10,$55,$00,$44,$44,$50,$01
	.byte $00,$00,$55,$45,$00,$55,$00,$00
	.byte $50,$45,$00,$55,$00,$55,$01,$00
	.byte $00,$00,$50,$15,$00,$55,$00,$00
	.byte $04,$00,$50,$55,$00,$50,$01,$00
	.byte $55,$00,$00,$55,$00,$50,$05,$00
	.byte $00,$00,$00,$55,$00,$50,$01,$00
	.byte $00,$00,$00,$55,$00,$10,$55,$00
	.byte $44,$04,$50,$15,$00,$00,$51,$05
	.byte $FF
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
	.byte $E2,$E3,$BB,$86,$3E,$8B,$E4,$B2
	.byte $C3,$C8,$00,$86,$E2,$DF,$BD,$86
	.byte $E2,$B0,$B4,$89,$E5,$00,$00,$E7
	.byte $B9,$E2,$86,$E4,$00,$C7,$BE,$B5
	.byte $84,$E3,$BA,$C7,$B4,$8C,$E1,$DC
	.byte $87,$E3,$E3,$C6,$B6,$84,$E3,$B3
	.byte $C2,$B7,$8C,$E1,$DE,$88,$E1,$BC
	.byte $C5,$A3,$E8,$8B,$E2,$B8,$DC,$87
	.byte $E2,$E2,$BB,$85,$CD,$E3,$E7,$B9
	.byte $DC,$87,$E2,$C6,$B6,$94,$DF,$86
	.byte $E2,$DD,$BC,$D3,$E3,$E7,$BA,$E0
	.byte $86,$E1,$DC,$93,$E4,$E7,$B0,$C9
	.byte $00,$86,$E2,$E3,$BB,$93,$E3,$B9
	.byte $E0,$00,$86,$DF,$94,$E3,$B8,$E1
	.byte $00,$86,$E2,$00,$C7,$A2,$C1,$E1
	.byte $B5,$90,$E3,$BA,$E2,$00,$87,$E5
	.byte $00,$DF,$DF,$C7,$D2,$8F,$E3,$B9
	.byte $E1,$00,$88,$E3,$00,$DC,$BD,$CF
	.byte $E4,$E7,$BA,$DC,$00,$9B,$E3,$B9
	.byte $E3,$00,$89,$E4,$00,$C7,$C1,$B4
	.byte $8C,$E5,$B1,$C0,$C9,$00,$00,$8A
	.byte $E7,$00,$DF,$C7,$C1,$C0,$BE,$B5
	.byte $88,$E5,$BA,$E1,$00,$00,$00,$8B
	.byte $E8,$00,$00,$E3,$DC,$DF,$C7,$C0
	.byte $B5,$86,$E2,$B8,$E3,$83,$FF
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
