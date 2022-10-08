BurnEffect_:
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyTurn
	jp .playerTurn
.enemyTurn
	ld hl, wBattleMonType1		;load player type
	ld de, wBattleMonType2		;load player type
	ld bc, wBattleMonStatus		;load player status byte
	jp .inflictBurn 			;.inflictBurn
.playerTurn
	ld hl, wEnemyMonType1		;load enemy type
	ld de, wEnemyMonType2		;load enemy type
	ld bc, wEnemyMonStatus		;load enemy status byte
	jp .inflictBurn 			;.inflictBurn
.inflictBurn
	ld a, [hl]					;check if type fire
	cp FIRE
	jp z, .fail					;jump to .fail if yes
	ld a, [de]
	cp FIRE
	jp z, .fail					;jump to .fail if yes
	ld a, [bc]					;Check if status
	and a
	jp nz, .fail				;jump to .fail if yes
	ld h, b
	ld l, c
	push hl
	callfar MoveHitTest			; check if it hits
	pop hl
	ld a, [wMoveMissed]
	and a
	jr nz, .fail
	set BRN, [hl]				;set status to BRN
	farcall HalveAttackDueToBurn	;call halved attack
	;can we change the current move animation before we make this call? probably not.
	callfar PlayCurrentMoveAnimation
	jpfar PrintAttackHalvedDueToBurnText
.fail
	jpfar PrintButItFailedText_
	