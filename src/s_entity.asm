; Copyright (C) 2024-2025 iProgramInCpp

; ** ENTITY: Crumble Block
.proc xt_inactive_block
	lda sprspace+sp_flags, x
	and #<~ef_collidable
	sta sprspace+sp_flags, x
	jmp xt_draw_crumble_block_okay
.endproc

.proc xt_draw_crumble_block
	; set collision box
	ldx temp1
	
	lda sprspace+sp_crumbl_state, x
	cmp #2
	beq xt_inactive_block
	
	lda sprspace+sp_flags, x
	ora #ef_collidable
	sta sprspace+sp_flags, x
	
	lda sprspace+sp_crumbl_width, x
	sta sprspace+sp_wid, x
	lda #8
	sta sprspace+sp_hei, x
	
okay:
	lda sprspace+sp_crumbl_state, x
	beq @idleState
	
	cmp #1
	beq @shakingState
	
	; inactive state
	ldy sprspace+sp_crumbl_timer, x
	iny
	tya
	sta sprspace+sp_crumbl_timer, x
	cpy #120
	bcc @done
	
	lda #0
	sta sprspace+sp_crumbl_state, x
	sta sprspace+sp_crumbl_timer, x
	bne @done

@shakingState:
	ldy sprspace+sp_crumbl_timer, x
	iny
	tya
	sta sprspace+sp_crumbl_timer, x
	cpy #30
	bcc @done
	
	inc sprspace+sp_crumbl_state, x ; increment to inactive state
	bne @done
	
@idleState:
	lda entground
	cmp temp1
	bne @done
	
	inc sprspace+sp_crumbl_state, x ; increment to shaking state

@done:
	lda #0
	sta plattemp1
	
	lda temp3
	sta y_crd_temp
	
	; prepare the X coordinate
	lda temp2
	sta x_crd_temp
	cmp #$F8
	bcc @smallerThanF8
	
	lda temp4
	bpl @smallerThanF8
	
	; X high coord < $00, don't draw that part
	lda #8
	sta plattemp1
	clc
	adc x_crd_temp
	sta x_crd_temp
	
	; if it's only 1 wide then just return
	cmp sprspace+sp_crumbl_width, x
	bcs @justReturn
	
@smallerThanF8:
	lda #pal_gray
	jsr gm_allocate_palette
	sta temp5
	
	ldx temp1
	
	; initiate loop here
@loop:
	lda plattemp1
	lsr
	lsr
	and #2
	clc
	adc #$B6
	tay
	
	; tile number prepared
	lda sprspace+sp_crumbl_state, x
	cmp #1
	bne @notShaking
	
	; is shaking
	lda x_crd_temp
	pha
	lda y_crd_temp
	pha
	
	jsr randint
	clc
	adc x_crd_temp
	sta x_crd_temp
	
	jsr randint
	clc
	adc y_crd_temp
	sta y_crd_temp
	
	lda temp5
	jsr oam_putsprite
	
	pla
	sta y_crd_temp
	pla
	sta x_crd_temp
	jmp @shaken
	
@notShaking:
	cmp #2
	bne @notInactive
	ldy #$BA
	
@notInactive:
	lda temp5
	jsr oam_putsprite
	
@shaken:
	lda x_crd_temp
	clc
	adc #8
	bcs @justReturn
	sta x_crd_temp
	
	lda plattemp1
	clc
	adc #8
	sta plattemp1
	
	ldx temp1
	cmp sprspace+sp_crumbl_width, x
	bcc @loop
	
@justReturn:
	rts

randint:
	jsr rand
	and #3
	sec
	sbc #2
	rts
.endproc

xt_draw_crumble_block_okay = xt_draw_crumble_block::okay

; ** ENTITY: Breakable Block
.proc xt_draw_breakable_block
	ldx temp1
	lda dreinvtmr
	beq :+
	jmp transitionMode
	
:	lda sprspace+sp_flags, x
	ora #ef_collidable
	sta sprspace+sp_flags, x
	
	and #ef_collided
	pha
	bne collided

normal:
	pla
	rts

collided:
	; despawn this entity
	lda dashtime
	beq normal
	cmp #(defdashtime-dashchrgtm)
	bcs normal

collidedforce:
	lda #0
	sta sprspace+sp_kind, x
	
	lda sprspace+sp_wid, x
	lsr
	lsr
	lsr
	sta clearsizex
	sta temp10
	lda sprspace+sp_hei, x
	lsr
	lsr
	lsr
	sta clearsizey
	sta temp11
	
	lda sprspace+sp_y, x
	lsr
	lsr
	lsr
	clc
	adc vertoffshack
	cmp #30
	bcc :+
	sbc #30
:	tay
	
	lda sprspace+sp_x_pg, x
	lsr
	lda sprspace+sp_x, x
	ror
	lsr
	lsr
	tax
	
	lda #$01
	sta setdataaddr
	sta setdataaddr+1
	jsr h_request_transfer
	
	lda #0
	jsr h_clear_tiles
	
	lda temp10
	sta clearsizex
	lda temp11
	sta clearsizey
	
	pla
	beq return
	jmp gm_rebound

transitionMode:
	; In transition mode, check if the player is interacting with us in the final frames
	lda sprspace+sp_flags, x
	and #<~ef_collidable
	sta sprspace+sp_flags, x
	
	; check if the player's hitbox is inside
	lda sprspace+sp_wid, x
	sta temp9
	lda sprspace+sp_hei, x
	sta temp10
	lda #0
	sta temp7
	sta temp8
	
	txa
	tay
	jsr gm_check_collision_ent
	beq return
	
	; is collided, so just break, but DON'T rebound
	lda #0
	pha
	jmp collidedforce

return:
	rts
.endproc

; ** ENTITY: Strawberry
.proc xt_draw_berry
	lda temp1
	pha
	
	jsr xt_update_berry
	bne @shrinking
	
	; normal rendering
	lda #pal_red
	jsr gm_allocate_palette
	sta temp5
	sta temp8
	
	pla
	sta temp1
	tax
	
	lda #$F8
	sta temp6
	lda #$FA
	sta temp7
	jmp gm_draw_common

@shrinking:
	; shrinking
	lda #pal_red
	jsr gm_allocate_palette
	sta temp8
	ora #obj_fliphz
	sta temp5
	
	pla
	sta temp1
	tax
	lda sprspace+sp_strawb_timer, x
	and #$FC
	lsr
	clc
	adc #$CC
	sta temp6
	sta temp7
	jmp gm_draw_common
.endproc

.proc xt_update_berry
	ldx temp1
	
	lda sprspace+sp_strawb_flags, x
	and #esb_shrink
	bne @shrinkingMode_
	
	lda sprspace+sp_strawb_flags, x
	and #esb_picked
	beq @floatingMode
	
	; trailing behind player mode
	lda sprspace+sp_strawb_colid, x
	and #7
	beq :+
	
	dec sprspace+sp_strawb_colid, x
	
:	lda sprspace+sp_strawb_colid, x
	eor #$FF
	clc
	adc plrtrahd
	
	and #$3F
	tay
	
	clc
	lda temp2
	cmp #$F8
	bcc :+
	lda #0
:	adc plr_trace_x, y
	ror                 ; average between temp2 and plr_trace_x
	sta temp2
	
	clc
	lda temp3
	adc plr_trace_y, y
	ror
	sta temp3
	
	clc
	lda temp2
	adc camera_x
	sta sprspace+sp_x, x
	
	lda camera_x_pg
	adc #0
	sta sprspace+sp_x_pg, x
	
	lda temp3
	sta sprspace+sp_y, x
	
	lda groundtimer
	bmi @return
	cmp #9
	bcc @return
	
	lda sprspace+sp_strawb_colid, x
	cmp #9
	bcs @return
	
	jmp gm_pick_up_berry_entity
	
@return:
	lda #0
	rts

@shrinkingMode_:
	bne @shrinkingMode

@floatingMode:
	jsr gm_ent_oscillate
	; floating mode
	jsr gm_check_player_bb
	bne :+
	rts
	
:	; collided, set to picked up mode
	lda #esb_picked
	sta sprspace+sp_strawb_flags, x
	
	inc plrstrawbs
	lda plrstrawbs
	asl
	asl
	asl
	sta sprspace+sp_strawb_colid, x
	bne @return

@shrinkingMode:
	; TODO
	ldy sprspace+sp_strawb_timer, x
	iny
	tya
	cmp #15
	bcs @collect
	sta sprspace+sp_strawb_timer, x
	
	; sp_strawb_timer
	lda #1
	rts

@collect:
	lda #0
	sta sprspace+sp_kind, x
	
	lda temp3
	pha
	lda temp2
	pha
	jsr gm_give_points_ent
	pla
	sta temp2
	pla
	sta temp3
	
	lda #1
	rts
.endproc

; ** ENTITY: Falling Block
.proc xt_draw_falling_block
	ldx temp1
	lda sprspace+sp_fall_state, x
	beq @state_Init
	cmp #1
	beq @state_Hanging_
	cmp #2
	beq @state_Shaking
	cmp #3
	beq @state_Falling
	
@state_Init:
	inc sprspace+sp_fall_state, x
	
	; Initialization: load some properties from the data index
	lda sprspace+sp_fall_dindx, x
	asl
	tay
	lda xt_falling_block_table, y
	sta temp10
	sta sprspace+sp_fall_datlo, x
	iny
	lda xt_falling_block_table, y
	sta temp10+1
	sta sprspace+sp_fall_dathi, x
	
	ldy #0
	lda (temp10), y
	sta sprspace+sp_wid, x
	iny
	lda (temp10), y
	sta sprspace+sp_hei, x
	
	; set ourself as collidable
	lda sprspace+sp_flags, x
	ora #ef_collidable
	sta sprspace+sp_flags, x
	
	; clear the tiles in the tile map though --
	; we want the player to collide with this object instead
	jsr computeClearSizeEntity
	jsr computeTileXYForEntity
	
	lda #0
	jsr h_clear_tiles
	
	rts
	
@state_Shaking:
	dec sprspace+sp_fall_timer, x
	beq @startFalling
	
	; shake!
	lda sprspace+sp_fall_timer, x
	and #3
	tay
	lda shakeTable, y
	clc
	adc temp2
	sta temp2
	lda temp4
	adc shakeTableH, y
	sta temp4
	jmp drawSpriteVersion

@startFalling:
	lda #0
	sta sprspace+sp_vel_y, x
	sta sprspace+sp_vel_y_lo, x
	
	inc sprspace+sp_fall_state, x
	jmp drawSpriteVersion

@state_Hanging_:
	beq @state_Hanging

@state_Falling:
	lda temp3
	pha
	
	txa
	pha
	tay
	jsr gm_ent_move_y
	pla
	sta temp1
	tax
	
	pla
	sta temp3
	
	; set up the data pointer
	lda sprspace+sp_fall_datlo, x
	sta temp10
	lda sprspace+sp_fall_dathi, x
	sta temp10+1
	
	; maxY resides at index 5
	ldy #5
	lda sprspace+sp_y, x
	cmp (temp10), y
	bcs @landed
	
	; gravity
	lda sprspace+sp_vel_y_lo, x
	clc
	adc #$20
	sta sprspace+sp_vel_y_lo, x
	bcc :+
	inc sprspace+sp_vel_y, x
	
:	jmp drawSpriteVersion

@state_Hanging:
	cpx entground
	bne @return
	
	inc sprspace+sp_fall_state, x
	lda #48
	sta sprspace+sp_fall_timer, x
	
	; clear it from the visible tiles
	lda #$01
	sta setdataaddr
	sta setdataaddr+1
	
	lda temp1
	pha
	
	jsr computeClearSizeEntity
	jsr computeTileXYForEntity
	jsr h_request_transfer
	
	pla
	sta temp1
	
	; start drawing the sprite version
	ldx temp1
	jsr drawSpriteVersion
	
@return:
	rts

@landed:
	lda #0
	sta sprspace+sp_kind, x
	
	lda (temp10), y
	sta sprspace+sp_y, x
	
	; prepare the data
	iny ; maxY resides at index 5, chr offset at index 6
	lda (temp10), y
	sta setdataaddr
	iny
	lda (temp10), y
	sta setdataaddr+1
	
	; get the tile number
	ldy #2
	lda (temp10), y
	sta temp11
	
	; first, modify the tilemap to set the solid tiles
	jsr computeClearSizeEntity
	jsr computeTileXYForEntity
	lda temp11
	jsr h_clear_tiles
	
	; then program the PPU transfer
	; TODO: figure out a way not to call these twice.
	; they're not that expensive, but they are annoying
	ldx temp1
	jsr computeClearSizeEntity
	jsr computeTileXYForEntity
	jsr h_request_transfer
	
	lda #$7
	sta quakeflags
	sta quaketimer
	rts

drawSpriteVersion:
; Falling Block Data struct offsets:
; 0 - Width
; 1 - Height
; 2 - Tile to set when landing
; 3 - Bank to set while rendering
; 4 - Palette to use
; 5 - Y before the platform lands
; 6 - Low byte of CHR data addr
; 7 - High byte of CHR data addr
;+8 - Sprite Data
@off_sprite_data = 8

@xLimit  := plattemp1
@yLimit  := plattemp2
@attrib  := temp9
@dataPtr := temp10 ; and temp11
@currY   := temp7
@spridx  := temp6
@oldoam  := temp8
	; Draws the sprite version of this entity.
	lda sprspace+sp_fall_datlo, x
	sta @dataPtr+0
	lda sprspace+sp_fall_dathi, x
	sta @dataPtr+1
	
	; Check if the bank needs to be loaded
	ldy #3
	lda (@dataPtr), y
	beq @noBankNeeded
	sta spr1_bknum
@noBankNeeded:
	
	lda sprspace+sp_wid, x
	clc
	adc #7
	lsr
	lsr
	lsr
	sta @xLimit
	;dec @xLimit
	
	lda sprspace+sp_hei, x
	clc
	adc #15
	lsr
	lsr
	lsr
	lsr
	sta @yLimit
	
	iny ; now looking at the palette
	lda (@dataPtr), y
	jsr gm_allocate_palette
	sta @attrib
	
	lda temp3
	sta y_crd_temp
	
	lda #@off_sprite_data
	sta @spridx
	jsr @skipLeftSpriteIfNeeded
	
	; if the amount of cols to draw is now 0
	lda @xLimit
	beq @breakColumn
	
	lda oam_wrhead
	sta @oldoam
	
@loopColumn:
	lda temp3
	sta y_crd_temp
	
	lda @yLimit
	sta @currY
	
@loopRow:
	ldy @spridx
	inc @spridx
	lda (@dataPtr), y
	tay
	lda @attrib
	jsr oam_putsprite
	
	lda y_crd_temp
	clc
	adc #16
	bcs @breakRow
	sta y_crd_temp
	
	dec @currY
	bne @loopRow
	
@breakRow:
	; row complete, increment column
	lda x_crd_temp
	clc
	adc #8
	bcs @breakColumn
	sta x_crd_temp
	
	dec @xLimit
	bne @loopColumn

@breakColumn:
	jmp @shuffleOAM

@skipLeftSpriteIfNeeded:
	lda temp2
	cmp #$F8
	bcc :+
	
	; sprite X is bigger than $F8, because either the sprite is to the
	; left of the screen (so fraudulently got there via overflow), or
	; legitimately to the right
	lda temp4
	bmi @skipLeftSprite
	lda temp2
:	sta x_crd_temp
	rts
	
@skipLeftSprite:
	lda x_crd_temp
	and #7
	sta x_crd_temp
	
	; decrement the width (used to terminate the loop)
	dec @xLimit
	
	; also skip the first column in the data
	lda sprspace+sp_hei, x
	lsr
	lsr
	lsr
	clc
	adc #@off_sprite_data
	sta @spridx

@dont:
	rts

@shuffleOAM:
	lda framectr
	and #1
	bne @dont
	
	; @oldoam    - OLD OAM head
	; oam_wrhead - NEW OAM head
	ldx @oldoam
	ldy oam_wrhead
	jmp invert_oam_order

computeClearSizeEntity:
	lda sprspace+sp_wid, x
	lsr
	lsr
	lsr
	sta clearsizex
	
	lda sprspace+sp_hei, x
	lsr
	lsr
	lsr
	sta clearsizey
	rts

computeTileXYForEntity:
	lda sprspace+sp_y, x
	lsr
	lsr
	lsr
	tay
	
	lda sprspace+sp_x_pg, x
	lsr
	lda sprspace+sp_x, x
	ror
	lsr
	lsr
	tax
	rts

shakeTable:		.byte $01,$00,$FF,$00
shakeTableH:	.byte $00,$00,$FF,$00
.endproc

; FALLING BLOCK tiles
xt_falling_block_table:
	.word fall_ch1_a
