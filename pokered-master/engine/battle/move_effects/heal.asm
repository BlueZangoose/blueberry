HealEffect_:
	ldh a, [hWhoseTurn]
	and a
	ld de, wBattleMonHP
	ld hl, wBattleMonMaxHP
	ld a, [wPlayerMoveNum]
	jr z, .healEffect
	ld de, wEnemyMonHP
	ld hl, wEnemyMonMaxHP
	ld a, [wEnemyMoveNum]
.healEffect
	ld b, a
	push bc				;popped in .updateHPBar
	ld a, [de]
	cp [hl] ; most significant bytes comparison is ignored
	        ; causes the move to miss if max HP is 255 or 511 points higher than the current HP
	inc de
	inc hl
	ld a, [de]
	sbc [hl]
	jp z, .failed ; no effect if user's HP is already at its maximum
	ld a, b
	cp BURROW
	jr z, .healOneQuarter
	cp EAT_POISON
	jr z, .healThreeQuarters
	cp BURY_ROOTS
	jr nz, .healHP
;~~REST BEGINS~~
	push hl
	push de
	push af			; saves the flags
	ld c, 50
	call DelayFrames
	ld hl, wBattleMonStatus
	ldh a, [hWhoseTurn]
	and a
	jr z, .restEffect
	ld hl, wEnemyMonStatus
.restEffect
	ld a, [hl]
	and a
	ld [hl], 2 ; clear status and set number of turns asleep to 2
	ld hl, StartedSleepingEffect ; if mon didn't have an status
	jr z, .printRestText
	ld hl, FellAsleepBecameHealthyText ; if mon had an status
.printRestText
	call PrintText
	pop af			; loads the flags
	pop de
	pop hl
	jr .healHP
;~~REST ENDS~~
.healOneQuarter
	ld a, [hld]
	ld [wHPBarMaxHP], a
	ld c, a
	ld a, [hl]
	ld [wHPBarMaxHP+1], a
	ld b, a
	srl b
	rr c
	srl b
	rr c
	jr .gotHPAmountToHeal
.healThreeQuarters
	ld a, [hld]
	ld [wHPBarMaxHP], a
	ld c, a
	ld a, [hl]
	ld [wHPBarMaxHP+1], a
	ld b, a
	srl b
	rr c
	push hl
	ld h, b
	ld l, c
	srl b
	rr c
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	jr .gotHPAmountToHeal
.healHP
	ld a, [hld]
	ld [wHPBarMaxHP], a
	ld c, a
	ld a, [hl]
	ld [wHPBarMaxHP+1], a
	ld b, a
	jr z, .gotHPAmountToHeal
; Recover and Softboiled only heal for half the mon's max HP
	srl b
	rr c
.gotHPAmountToHeal
; update HP
	ld a, [de]
	ld [wHPBarOldHP], a
	add c
	ld [de], a
	ld [wHPBarNewHP], a
	dec de
	ld a, [de]
	ld [wHPBarOldHP+1], a
	adc b
	ld [de], a
	ld [wHPBarNewHP+1], a
	inc hl
	inc de
	ld a, [de]
	dec de
	sub [hl]
	dec hl
	ld a, [de]
	sbc [hl]
	jr c, .playAnim
; copy max HP to current HP if an overflow occurred
	ld a, [hli]
	ld [de], a
	ld [wHPBarNewHP+1], a
	inc de
	ld a, [hl]
	ld [de], a
	ld [wHPBarNewHP], a
.playAnim
	;check for Eat Poison first
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyTurn
	jp .playerTurn
.enemyTurn
	ld de, wEnemyMoveNum
	jr .checkEatPoison
.playerTurn
	ld de, wPlayerMoveNum
.checkEatPoison
	ld a, [de]
	cp EAT_POISON
	jr z, .skipAnimation
	;Eat Poison check complete
	ld hl, PlayCurrentMoveAnimation		;Eat Poison has to animate in CureStatusEffect_ in case the move is used at full health.
	call EffectCallBattleCore
.skipAnimation
	ldh a, [hWhoseTurn]
	and a
	hlcoord 10, 9
	ld a, $1
	jr z, .updateHPBar
	hlcoord 2, 2
	xor a
.updateHPBar
	ld [wHPBarType], a
	predef UpdateHPBar2
	ld hl, DrawHUDsAndHPBars
	call EffectCallBattleCore
	pop bc					; b contains [wEnemyMoveNum]
	ld a, b
	cp a, EAT_POISON
	jr z, .eatPoison
	ld hl, RegainedHealthText
	jp PrintText
.eatPoison
	ld hl, EatPoisonText
	jp PrintText
.failed
	ld c, 50
	call DelayFrames
	pop bc					; b contains [wEnemyMoveNum]
	ld a, b
	cp a, EAT_POISON
	jr z, .eatPoison
	ld hl, PrintButItFailedText_
	jp EffectCallBattleCore

StartedSleepingEffect:
	text_far _StartedSleepingEffect
	text_end

FellAsleepBecameHealthyText:
	text_far _FellAsleepBecameHealthyText
	text_end

RegainedHealthText:
	text_far _RegainedHealthText
	text_end

EatPoisonText:
	text_far _EatPoisonText
	text_end
