; Copyright (C) 2024 iProgramInCpp

;   temp1 - Entity Index (passed in through X too)
;   temp2 - X Screen Position
;   temp3 - Y Screen Position
;   temp4 - X High Position

.proc level1_zip_mover
; sp_l1zm_state
idle    = 0
charge  = 1
lunge   = 2
crash   = 3
retreat = 4

	lda temp1
	pha
	tax
	
	lda sprspace+sp_flags, x
	ora #ef_collidable
	sta sprspace+sp_flags, x
	
	lda #16
	sta sprspace+sp_hei, x
	
	lda #0
	sta sprspace+sp_vel_x, x
	sta sprspace+sp_vel_y, x
	sta sprspace+sp_vel_x_lo, x
	sta sprspace+sp_vel_y_lo, x
	
	; which state are we in?
	jsr getState
	beq idleState
	cmp #charge
	beq chargeState
	cmp #lunge
	beq lungeState
	cmp #crash
	beq crashState
	cmp #retreat
	beq retreatState
	
idleState:
	cpx entground
	bne drawProcess
	
	; entground is this entity's index, therefore increase the state
	jsr incrementState
	bne drawProcess

chargeState:
	inc sprspace+sp_l1zm_timer, x
	lda sprspace+sp_l1zm_timer, x
	cmp #6
	bne drawProcess
	
	; move on to the lunge state
	jsr incrementState
	lda #0
	sta sprspace+sp_l1zm_timer, x
	beq drawProcess

lungeState:
	lda sprspace+sp_l1zm_trajx, x
	sta sprspace+sp_vel_x, x
	lda sprspace+sp_l1zm_trajy, x
	sta sprspace+sp_vel_y, x
	jsr moveXY
	
	ldx temp1
	inc sprspace+sp_l1zm_timer, x
	lda sprspace+sp_l1zm_timer, x
	cmp #30
	bne drawProcess
	
	; ok, it reached 30
incrementStateAndDraw:
	jsr incrementState
	lda #0
	sta sprspace+sp_l1zm_timer, x
	beq drawProcess

crashState:
	inc sprspace+sp_l1zm_timer, x
	lda sprspace+sp_l1zm_timer, x
	cmp #30
	bne drawProcess
	beq incrementStateAndDraw

retreatState:
	jsr calculateQuarterInverse
	jsr moveXY
	
	inc sprspace+sp_l1zm_timer, x
	lda sprspace+sp_l1zm_timer, x
	cmp #120
	bne drawProcess
	
	; ok, it reached 120
	jsr resetState
	lda #0
	sta sprspace+sp_l1zm_timer, x

drawProcess:
	pla
	sta temp1
	tax
	
	lda sprspace+sp_wid, x
	sec
	sbc #8
	sta temp9
	
	lda #pal_gray
	jsr gm_allocate_palette
	sta temp8
	
	lda temp2
	sta x_crd_temp
	lda temp3
	sta y_crd_temp
	
	lda #0
loop:
	sta temp10
	
	; draw a sprite
	tay             ; tay to calculate flags, not because we need it in Y
	bne notZero
	
	; it's zero
	lda #$40
	bne draw
	
notZero:
	; check if it's the end
	cmp temp9
	bne notEnd
	
	; it's the end
	lsr
	lsr
	and #2
	beq endWhatever
	lda #$46
	bne draw
endWhatever:
	lda #$48
	bne draw

notEnd:
	; not the end
	lsr
	lsr
	and #2
	clc
	adc #$42
	
draw:
	tay
	
	lda temp8
	pha
	sty temp8
	
	jsr getState
	beq noAnim
	cmp #charge
	beq noAnim
	cmp #crash
	beq noAnim
	
	cmp #lunge
	bne noLunge
	
	lda sprspace+sp_l1zm_timer, x
	lsr
	jmp normalSpeed
	
noLunge:
	lda sprspace+sp_l1zm_timer, x
	lsr
	lsr
normalSpeed:
	and #3
	tay
	lda tableTimer, y
	clc
	adc temp8
	tay
	
noAnim:
	pla
	sta temp8
	jsr oam_putsprite
	
	lda x_crd_temp
	clc
	adc #8
	; TODO: carry here means it overflew!
	sta x_crd_temp
	
	ldx temp1
	lda temp10
	clc
	adc #8
	cmp sprspace+sp_wid, x
	bcc loop
	
	rts

moveXY:
	lda temp2
	pha
	lda temp3
	pha
	lda temp4
	pha
	lda temp1
	pha
	
	tay
	jsr gm_ent_move_y
	
	pla
	pha
	tay
	jsr gm_ent_move_x
	
	pla
	sta temp1
	tax
	pla
	sta temp4
	pla
	sta temp3
	pla
	sta temp2
	rts

getState:
	lda sprspace+sp_flags, x
	rol
	rol
	rol
	rol
	and #%00000111
	rts

incrementState:
	lda sprspace+sp_flags, x
	clc
	adc #%00100000
	sta sprspace+sp_flags, x
	rts

resetState:
	lda sprspace+sp_flags, x
	and #%00011111
	sta sprspace+sp_flags, x
	rts

calculateQuarterInverse:
	; invert and also shift right once
	lda #0
	sec
	sbc sprspace+sp_l1zm_trajx, x
	cmp #$80
	ror
	sta sprspace+sp_vel_x, x
	ror sprspace+sp_vel_x_lo, x
	
	lda #0
	sec
	sbc sprspace+sp_l1zm_trajy, x
	cmp #$80
	ror
	sta sprspace+sp_vel_y, x
	ror sprspace+sp_vel_y_lo, x
	
	; then shift it again
	lda sprspace+sp_vel_x, x
	cmp #$80
	ror
	sta sprspace+sp_vel_x, x
	ror sprspace+sp_vel_x_lo, x
	
	lda sprspace+sp_vel_y, x
	cmp #$80
	ror
	sta sprspace+sp_vel_y, x
	ror sprspace+sp_vel_y_lo, x
	rts

tableTimer:	.byte 0, 10, 20, 30
.endproc
