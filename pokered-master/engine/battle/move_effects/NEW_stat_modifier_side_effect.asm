ModifierSideEffect_:
	ld hl, wEnemyMonStatMods
	ld de, wPlayerMoveEffect
	ld bc, wEnemyBattleStatus1
	ldh a, [hWhoseTurn]
	and a
	jr z, .statModifierDownEffect
	ld hl, wPlayerMonStatMods
	ld de, wEnemyMoveEffect
	ld bc, wPlayerBattleStatus1
.statModifierDownEffect
	push bc
	push hl
	farcall CheckTargetSubstitute ; can't hit through substitute
	pop hl
	pop bc
	jp nz, MoveMissed_
	ld a, [de]
;	call BattleRandom
;	cp 33 percent + 1 ; chance for side effects
;	jp nc, CantLowerAnymore_
	ld a, [de]
	sub ATK_DOWN_SIDE_EFFECT_10 ; map each stat to 0-5
	cp 6
	jr c, .tenPercent
	sub 6
	cp 6
	jr c, .thirtyPercent
	sub 6
	cp 6
	jr c, .fiftyPercent
	sub 6
	cp 6
	jr c, .decrementStatMod
.tenPercent
	push af
	call Random
	cp 10 percent
	jp nc, .probabilityNotMet
	pop af
	jr .decrementStatMod
.thirtyPercent
	push af
	call Random
	cp 30 percent
	jp nc, .probabilityNotMet
	pop af
	jr .decrementStatMod
.fiftyPercent
	push af
	call Random
	cp 50 percent
	jp nc, .probabilityNotMet
	pop af
	jr .decrementStatMod
.probabilityNotMet
	pop af
	jp CantLowerAnymore_
.decrementStatMod
	ld c, a
	ld b, $0
	add hl, bc
	ld b, [hl]
	dec b ; dec corresponding stat mod
	jp z, CantLowerAnymore_ ; if stat mod is 1 (-6), can't lower anymore
;To drop stats by 2 (water cannon)
	dec de				; change de from move effect to movenum
	ld a, [de]
	cp WATER_CANNON
	jr nz, .ok
	inc de				; change de from movenum to move effect
	dec b ; stat down 2 effects only (dec mod again)
	jr nz, .ok				; check if b is 0 (not allowed)
	inc b ; increment mod to 1 (-6) if it would become 0 (-7)
	inc de
;end drop stats by 2
.ok
	ld [hl], b ; save modified mod
	ld a, c
	cp $4
	jr nc, UpdateLoweredStatDone_ ; jump for evasion/accuracy
	push hl
	push de
	ld hl, wEnemyMonAttack + 1			; wEnemyMonAttack is a word. +1 gives us the second byte.
	ld de, wEnemyMonUnmodifiedAttack
	ldh a, [hWhoseTurn]
	and a
	jr z, .pointToStat
	ld hl, wBattleMonAttack + 1
	ld de, wPlayerMonUnmodifiedAttack
.pointToStat
	push bc			; save bc for later, but we're still using c now. Push doesn't clear bc.
	sla c			; c was a value 0-5. It's now a value 0-10. We double because we are moving in distances of words, not bytes.
	ld b, $0		; bc is now a value 0-10
	add hl, bc		; moves hl's pointer from second half of wEnemyMonAttack to the second half of the stat we want to modify.
	ld a, c			; a is now a value 0-10.
	add e			; add 0-10 to the address pointed to by de.
	ld e, a			; de now points to the unmodified stat we're dealing with.
	jr nc, .noCarry
	inc d 			; if e overflowed, this catches that.
.noCarry
	pop bc			; bc is back to being 0-5, no longer 0-10.
	ld a, [hld]		; hl was pointing to the second byte of wEnemyMonAttack. the decrement now points it to the first byte of wEnemyMonAttack.
	sub $1 			; can't lower stat below 1
	jr nz, .recalculateStat
	ld a, [hl]
	and a
	jp z, CantLowerAnymore_Pop_
.recalculateStat
; recalculate affected stat
; paralysis and burn penalties, as well as badge boosts are ignored
	push hl
	push bc
	ld hl, StatModifierRatios_
	dec b
	sla b
	ld c, b
	ld b, $0
	add hl, bc
	pop bc
	xor a
	ldh [hMultiplicand], a
	ld a, [de]
	ldh [hMultiplicand + 1], a
	inc de
	ld a, [de]
	ldh [hMultiplicand + 2], a
	ld a, [hli]
	ldh [hMultiplier], a
	call Multiply
	ld a, [hl]
	ldh [hDivisor], a
	ld b, $4
	call Divide
	pop hl
	ldh a, [hProduct + 3]
	ld b, a
	ldh a, [hProduct + 2]
	or b
	jp nz, UpdateLoweredStat_
	ldh [hMultiplicand + 1], a
	ld a, $1
	ldh [hMultiplicand + 2], a

UpdateLoweredStat_:
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	pop de
	pop hl
UpdateLoweredStatDone_:
	ld b, c					; c is the stat to modify (0-5, atk-def-spd-spc-eva-acc)
	inc b
	push de
	call PrintStatText_
	pop de
	ld a, [de]				; unmodified stat maybe
;	cp $44					; 68 decimal
;	jr nc, .ApplyBadgeBoostsAndStatusPenalties
;	call PlayCurrentMoveAnimation2
;.ApplyBadgeBoostsAndStatusPenalties
;	ldh a, [hWhoseTurn]
;	and a
;	call nz, ApplyBadgeStatBoosts ; whenever the enemy uses a stat-down move, badge boosts get reapplied again to every stat,
	                              ; even to those not affected by the stat-up move (will be boosted further)
	ld hl, MonsStatsFellText_
	call PrintText

	; These where probably added given that a stat-down move affecting speed or attack will override
	; the stat penalties from paralysis and burn respectively.
	; But they are always called regardless of the stat affected by the stat-down move.
;	call QuarterSpeedDueToParalysis
;	jp HalveAttackDueToBurn
	jpfar ModifierSideEffectFinish

CantLowerAnymore_Pop_:
	pop de
	pop hl
	inc [hl]

CantLowerAnymore_:
	ld a, [de]
	cp ATTACK_DOWN_SIDE_EFFECT
	jp nc, ModifierSideEffectFinish_
;	ret nc
	ld hl, NothingHappenedText
	jp PrintText

MoveMissed_:
	ld a, [de]
	cp $44
	jp nc, ModifierSideEffectFinish_
;	ret nc
	jp ConditionalPrintButItFailed

MonsStatsFellText_:
	text_far _MonsStatsFellText
	text_asm
	ld hl, FellText_
	ldh a, [hWhoseTurn]
	and a
	ld de, wPlayerMoveEffect
	jr z, .playerTurn
	ld de, wEnemyMoveEffect
.playerTurn
; check if the move's effect decreases a stat by 2
	dec de
	ld a, [de]
	cp WATER_CANNON
	jp z, .waterCannonSkip
	inc de
	ld a, [de]
	cp BIDE_EFFECT
	ret c
	cp ATTACK_DOWN_SIDE_EFFECT
	ret nc
.waterCannonSkip
	ld hl, GreatlyFellText_
	ret

GreatlyFellText_:
	text_pause
	text_far _GreatlyFellText
; fallthrough
FellText_:
	text_far _FellText
	text_end

PrintStatText_:
	ld hl, StatModTextStrings_
	ld c, "@"
.findStatName_outer
	dec b
	jr z, .foundStatName
.findStatName_inner
	ld a, [hli]
	cp c
	jr z, .findStatName_outer
	jr .findStatName_inner
.foundStatName
	ld de, wStringBuffer
	ld bc, $a
	jp CopyData

StatModTextStrings_:
	list_start StatModTextStrings_
	li "ATTACK"
	li "DEFENSE"
	li "SPEED"
	li "SPECIAL"
	assert_list_length SPECIAL_DOWN_SIDE_EFFECT - ATTACK_DOWN_SIDE_EFFECT + 1
	li "ACCURACY"
	li "EVADE"
	assert_list_length NUM_STAT_MODS - 2 ; two bytes are unused
	assert_list_length EVASION_UP1_EFFECT - ATTACK_UP1_EFFECT + 1
	assert_list_length EVASION_DOWN1_EFFECT - ATTACK_DOWN1_EFFECT + 1
	assert_list_length EVASION_UP2_EFFECT - ATTACK_UP2_EFFECT + 1
	assert_list_length EVASION_DOWN2_EFFECT - ATTACK_DOWN2_EFFECT + 1


StatModifierRatios_:
; first byte is numerator, second byte is denominator
	db 25, 100  ; 0.25
	db 28, 100  ; 0.28
	db 33, 100  ; 0.33
	db 40, 100  ; 0.40
	db 50, 100  ; 0.50
	db 66, 100  ; 0.66
	db  1,   1  ; 1.00
	db 15,  10  ; 1.50
	db  2,   1  ; 2.00
	db 25,  10  ; 2.50
	db  3,   1  ; 3.00
	db 35,  10  ; 3.50
	db  4,   1  ; 4.00

ModifierSideEffectFinish_:
	jpfar ModifierSideEffectFinish
