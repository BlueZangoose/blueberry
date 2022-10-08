BoostSideEffect_:
 	ld hl, wPlayerMonAttackMod			; add 0-5 for atk-def-spd-spc-eva-acc
	ld de, wPlayerMoveEffect
	ld bc, wEnemyBattleStatus1			; check for invulnerability
	ldh a, [hWhoseTurn]
	and a
	jr z, .statModifierUpEffect
	ld hl, wEnemyMonAttackMod			; add 0-5 for atk-def-spd-spc-eva-acc
	ld de, wEnemyMoveEffect
	ld bc, wPlayerBattleStatus1			; check for invulnerability
.statModifierUpEffect
	ld a, [de]
	cp ATK_UP_SIDE_EFFECT_50
	jr z, .atkUpFifty
	cp DEF_UP_SIDE_EFFECT_20
	jr z, .defUpTwenty
	cp CURE_STATUS_EFFECT
	jr z, .crabwalk				; crabwalk is the only move that can have this effect here
.atkUpFifty
	push af
	call Random
	cp 50 percent
	jp nc, .probabilityNotMet
	pop af
;hl is already pointing to atk
	ld c, 0				; Later we use this to know which stat we're affecting
	jr .incrementStatMod
.defUpTwenty
	push af
	call Random
	cp 20 percent
	jp nc, .probabilityNotMet
	pop af
	inc hl				;move hl from atk to def
	ld c, 1				; Later we use this to know which stat we're affecting
	jr .incrementStatMod
.crabwalk
	inc hl				;move hl from atk to def
	inc hl				;move hl from def to spd
	ld c, 2				; Later we use this to know which stat we're affecting
	jr .incrementStatMod
.probabilityNotMet
	pop af
	jp CantRaiseAnymore_
.incrementStatMod
;	ld c, a
;	ld b, $0
;	add hl, bc
	ld b, [hl]
	inc b ; inc corresponding stat mod
	ld a, b
	cp 14
	jp z, CantRaiseAnymore_ ; if stat mod is 13 (+6), can't raise anymore - !!!!!!!!!!!!check for crabwalk - it should still be allowed to proceed
.ok
	ld a, [de]
	cp CURE_STATUS_EFFECT
	jr z, .crabwalkSpeed
	jr nz, .saveModifiedStat
.crabwalkSpeed
	ld a, 13
	ld b, a
.saveModifiedStat
	ld [hl], b ; save modified mod
	ld a, c
	cp $4
	jr nc, UpdateRaisedStatDone_ ; jump for evasion/accuracy
	push hl
	push de
	ld hl, wBattleMonAttack + 1			; wEnemyMonAttack is a word. +1 gives us the second byte.
	ld de, wPlayerMonUnmodifiedAttack
	ldh a, [hWhoseTurn]
	and a
	jr z, .pointToStat
	ld hl, wEnemyMonAttack + 1
	ld de, wEnemyMonUnmodifiedAttack
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
;	cp 999 			; can't raise stat above 999 - this doesn't work because a can't be above 256. need to check the high byte of wEnemyMonAttack.
;	jr nc, .recalculateStat
;	ld a, [hl]
;	and a
;	jp z, CantRaiseAnymore_Pop_
.recalculateStat
; recalculate affected stat
; paralysis and burn penalties, as well as badge boosts are ignored
	push hl
	push bc
	ld hl, StatModifierRatios2_
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
	jp nz, UpdateRaisedStat_
	ldh [hMultiplicand + 1], a
	ld a, $1
	ldh [hMultiplicand + 2], a

UpdateRaisedStat_:
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	pop de
	pop hl
UpdateRaisedStatDone_:
	ld b, c					; c is the stat to modify (0-5, atk-def-spd-spc-eva-acc)
	inc b
	push de
	call PrintStatText2_		;this is duplicated from elsewhere. Very inefficient!
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
	ld hl, MonsStatsRoseText_
	call PrintText

	; These where probably added given that a stat-down move affecting speed or attack will override
	; the stat penalties from paralysis and burn respectively.
	; But they are always called regardless of the stat affected by the stat-down move.
;	call QuarterSpeedDueToParalysis
;	jp HalveAttackDueToBurn
	jpfar ModifierSideEffectFinish

CantRaiseAnymore_Pop_:
	pop de
	pop hl
	inc [hl]

CantRaiseAnymore_:
	ld a, [de]
	cp CURE_STATUS_EFFECT		;	only effect that might want a message if it doesn't raise. for now, no message.
	jp nz, ModifierSideEffectFinish_
;	ret nc
;	ld hl, NothingHappenedText
;	jp PrintText
	jp z, ModifierSideEffectFinish_

;MoveMissed_:					; I have no idea why this is here. It can probably be deleted??
;	ld a, [de]
;	cp $44
;	jp nc, ModifierSideEffectFinish_
;;	ret nc
;	jp ConditionalPrintButItFailed

MonsStatsRoseText_:
	text_far _MonsStatsRoseText
	text_asm
	ld hl, RoseText_
	ldh a, [hWhoseTurn]
	and a
	ld de, wPlayerMoveEffect
	jr z, .playerTurn
	ld de, wEnemyMoveEffect
.playerTurn
; check if the move is crabwalk
	dec de
	ld a, [de]
	cp CRABWALK
	jp z, .crabwalkSkip
	inc de
	ret
.crabwalkSkip
	ld hl, GreatlyRoseText_
	ret

GreatlyRoseText_:
	text_pause
	text_far _GreatlyRoseText
; fallthrough
RoseText_:
	text_far _RoseText
	text_end

PrintStatText2_:				;this is duplicated from elsewhere. Very inefficient!
	ld hl, StatModTextStrings2_
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

StatModTextStrings2_:
	list_start StatModTextStrings2_
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


StatModifierRatios2_:
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

BoostSideEffectFinish_:
	jpfar BoostSideEffectFinish
