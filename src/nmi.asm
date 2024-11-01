; Copyright (C) 2024 iProgramInCpp

nmi_:
	inc nmicount
	sta mmc3_irqdi  ; disable IRQ for this frame
	pha
	txa
	pha
	tya
	pha
	
	lda nmienable
	beq @onlyAudioPlease ; if NMIs are softly disabled, then ONLY run audio
	
	jsr nmi_check_flags
	jsr nmi_check_gamemodes
	
	jsr oam_dma_and_read_cont
	jsr nmi_scrollsplit
	
@onlyAudioPlease:
	jsr aud_run
	
	pla
	tay
	pla
	tax
	pla
	rti

nmi_check_flags:
	lda #nc_flushcol
	bit nmictrl
	beq @tryPal
	
	eor nmictrl
	sta nmictrl
	jsr h_flush_col_r
	
@tryPal:
	lda #nc_flshpalv
	bit nmictrl
	beq @tryRow
	
	eor nmictrl
	sta nmictrl
	jsr h_flush_pal_r

@tryRow:
	lda #nc_flushrow
	bit nmictrl
	beq @tryHPal
	
	eor nmictrl
	sta nmictrl
	jsr h_flush_row_u

@tryHPal:
	lda #nc_flushpal
	bit nmictrl
	beq @tryClearEnq
	
	eor nmictrl
	sta nmictrl
	jsr h_flush_pal_u

@tryClearEnq:
	lda #nc_clearenq
	bit nmictrl
	beq @tryClearCol
	
	eor nmictrl
	sta nmictrl
	jsr h_enqueued_clear

@tryClearCol:
	lda #nc2_clrcol
	bit nmictrl2
	beq @trySetICr
	
	eor nmictrl2
	sta nmictrl2
	jsr h_clear_2cols

@trySetICr:
	lda #nc2_setl0ic
	bit nmictrl2
	beq @end
	
	eor nmictrl2
	sta nmictrl2
	jsr level0_nmi_set_icr
	
@end:
	lda #nc_turnon
	bit nmictrl
	beq @noTurnOn
	
	; turn on bit is set, set PPUMASK to the default
	eor nmictrl
	sta nmictrl
	lda #def_ppu_msk
	sta ppu_mask
	
@noTurnOn:
	rts

nmi_check_gamemodes:
	lda gamemode
	beq @return
	cmp #gm_titletra
	beq @titleTra
	cmp #gm_overwld
	beq @overwld
	cmp #gm_prologue
	beq @prologue
@return:
	rts

@overwld:
	lda #nc_updlvlnm
	bit nmictrl
	beq @return
	eor nmictrl
	sta nmictrl
	jmp ow_draw_level_name
	
@prologue:
	lda #nc_prolclr
	bit nmictrl
	beq @prol_dontClear
	eor nmictrl
	sta nmictrl
	ldx pl_ppuaddr
	ldy pl_ppuaddr+1
	sty ppu_addr
	stx ppu_addr
	
	lda #0
	ldy #32
:	sta ppu_data
	dey
	bne :-
	
@prol_dontClear:
	ldx pl_ppuaddr+1
	beq @return       ; nothing to write
	ldy pl_ppuaddr
	stx ppu_addr
	sty ppu_addr
	ldx pl_ppudata
	stx ppu_data
	rts

@titleTra:
	lda tl_timer
	and #$08
	lsr
	lsr
	lsr
	ldy #$3F
	ldx #$01
	jsr ppu_loadaddr
	tay
	lda alt_colors, y
	sta ppu_data
	lda alt_colors+2, y
	sta ppu_data
	lda alt_colors+4, y
	sta ppu_data
	rts
	
