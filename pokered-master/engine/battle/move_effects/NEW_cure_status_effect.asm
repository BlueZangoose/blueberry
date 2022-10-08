CureStatusEffect_:
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyTurn
	jp .playerTurn
.enemyTurn
	ld hl, wEnemyMonStatus
	ld de, wEnemyMoveNum
	jr .checkStatus
.playerTurn
	ld hl, wBattleMonStatus
	ld de, wPlayerMoveNum
	jr .checkStatus
.checkStatus			; make sure you already have a status effect
	xor a
	cp [hl]
	jr nc, .fail
	push hl
	push af
	push de
	callfar PlayCurrentMoveAnimation
	pop de
	pop af
	pop hl
	ld a, [de]
	cp CRABWALK
	jr z, .crabwalk
	cp EAT_POISON
	jr z, .eatPoison
	call RemoveAllStatus_
	jr .statusCured
.crabwalk
	ld a, 1 << PAR
	cp [hl]
	jr nz, .fail
	call RemoveAllStatus_
	jpfar BoostSideEffect_			; needs to be completed - needs to boost speed and print text
.eatPoison
	ld a, 1 << PSN
	cp [hl]
	jr nz, .fail
	call RemoveAllStatus_
	jpfar HealEffect_				;HealEffect_ has a special clause specifically for Eat Poison, also has the text print
.statusCured
	ld hl, StatusCuredText
	jp PrintText
.fail
;if not status, print fail text and return
	jpfar PrintButItFailedText_

RemoveAllStatus_:		; cures status, reverts stat drops
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyTurn
	jp .playerTurn
.enemyTurn
	ld hl, wEnemyMonStatus
	ld de, wEnemyMonAttack
	ld bc, wEnemyMonSpeed
	jr .cure
.playerTurn
	ld hl, wBattleMonStatus
	ld de, wBattleMonAttack
	ld bc, wBattleMonSpeed
	jr .cure
.cure
;need to check for brn or par, and revert the stat changes if so
	ld a, [hl]
	cp 1 << BRN
	jr z, .revertBurnAttackDrop
	CP 1 << PAR
	jr z, .revertParalyzeSpeedDrop
	jr .finish
.revertBurnAttackDrop:
	push hl			; save status from HL
	ld a, [de]		; load high byte 
	ld h, a
	inc de	
	ld a, [de]		; load low byte
	ld l, a
	dec de
	rl l			; rotate left to double
	rl h			; rotate left to double
	ld a, h			; can only load [de] from a
	ld [de], a
	inc de			; move to low byte
	ld a, l
	ld [de], a
	pop hl			; load status to HL
	jr .finish
.revertParalyzeSpeedDrop:
	push hl			; save status from HL
	ld a, [bc]		; load high byte 
	ld h, a
	inc bc	
	ld a, [bc]		; load low byte
	ld l, a
	dec bc
	rl l			; rotate left to double
	rl h			; rotate left to double
	rl l			; rotate left to double again!
	rl h			; rotate left to double again!
	ld a, h			; can only load [bc] from a
	ld [bc], a
	inc bc			; move to low byte
	ld a, l
	ld [bc], a
	pop hl			; load status to HL
	jr .finish
.finish
	xor a
	ld [hl], a
	ret
	
StatusCuredText:
	text_far _StatusCuredText
	text_end
