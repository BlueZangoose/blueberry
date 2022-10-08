StatusCounterEffect_:
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyTurn
	jp .playerTurn
.enemyTurn
	ld bc, wEnemyMoveEffect
	ld hl, wBattleMonStatus
	jr .checkOpponentStatus
.playerTurn
	ld bc, wPlayerMoveEffect
	ld hl, wEnemyMonStatus
	jr .checkOpponentStatus
.checkOpponentStatus	;Check if the opponent already has a status. We don't need to check if they attacked, that check is in core.
	ld a, [hl]
	and a
	jr nz, .return
;apply status
	ld a, [bc]
	cp BURN_COUNTEREFFECT
	jr z, .counterBurn
	cp POISON_COUNTEREFFECT
	jr z, .counterPoison
	cp PARALYZE_COUNTEREFFECT
	jr z, .counterParalyze
	jr .return					; if you somehow aren't any of the three countereffects...
.counterBurn
	set BRN, [hl]				;set status to BRN
	farcall HalveAttackDueToBurn	;call halved attack
	;can we change the current move animation before we make this call? probably not.
;	callfar PlayCurrentMoveAnimation		; why was this included? it just duplicates the move animation.
	jpfar PrintAttackHalvedDueToBurnText
	jr .return
.counterParalyze
	set PAR, [hl]
	farcall QuarterSpeedDueToParalysis ; quarter speed of affected mon
	;can we change the current move animation before we make this call? probably not.
;	callfar PlayCurrentMoveAnimation		; why was this included? it just duplicates the move animation.
	jpfar PrintMayNotAttackText
	jr .return
.counterPoison
	set PSN, [hl]
	;can we change the current move animation before we make this call? probably not.
;	callfar PlayCurrentMoveAnimation		; why was this included? it just duplicates the move animation.
	jpfar PrintPoisonedText
.return
	jpfar StatusCounterEffectFinish
