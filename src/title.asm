; Copyright (C) 2024 iProgramInCpp

gamemode_title:
	lda #ts_1stfr
	bit titlectrl                  ; might need to update the screen buffer
	bne gamemode_title_update_NEAR ; in PRG_TTLE
	
	; have to reset audio data because DPCM samples are loaded in at $C000
	; and we want to use that bank for title screen and overworld data.
	; We have 8K at our disposal.
	jsr aud_reset
	
	; Load said bank.
	lda #mmc3bk_prg0
	ldy #prgb_ttle
	jsr mmc3_set_bank
	
	jmp gamemode_title_init_FAR

gamemode_title_update_NEAR:
	jmp gamemode_title_update_FAR

tl_gameswitchpcard:
	; We will want to show the postcard.
	; Since the bank with the postcard code is already loaded, indeed we can
	; just call it.
	stx levelnumber
	
	jsr fade_out
	
	jsr postcard
	
	; Fall through to tl_gameswitch
	ldx levelnumber

tl_gameswitch_nofade:
	lda #gm_game
	sta gamemode
	lda #0
	sta gamectrl
	sta musictable
	sta musictable+1
	jsr gm_set_level
	jsr ow_clear_irq
	rts

tl_prolswitch:
	jsr fade_out

tl_prolswitch_nofade:
	lda #gm_prologue
	sta gamemode
	lda #0
	sta prolctrl
	jsr ow_clear_irq
	rts

tl_gameswitch:
	stx levelnumber
	lda #0
	sta fadeupdrt+1
	jsr fade_out
	ldx levelnumber
	jmp tl_gameswitch_nofade

.proc ow_clear_irq
	sei
	lda #<irq_idle
	sta irqaddr
	lda #>irq_idle
	sta irqaddr+1
	lda #0
	sta miscsplit
	cli
	rts
.endproc

; These belong in PRG_TTLE, but I don't have enough space there.
p_text0:	.byte "      This is it, Made{ne.      "
p_text1:	.byte "          Just breathe.         "
p_text2:	.byte "     Why are you so nervous?    "
p_text3:	.byte "        You can do this.        "
p_texttable:
	.word p_text0
	.word p_text1
	.word p_text2
	.word p_text3
