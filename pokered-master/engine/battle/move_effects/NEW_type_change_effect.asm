TypeChangeEffect_:
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyMoveEffect	;enemy's turn
	jp .playerMoveEffect		;player's turn
.enemyMoveEffect
	ld hl, wEnemyMoveEffect
	ld a, [hl]
	jp .whichEffect
.playerMoveEffect
	ld hl, wPlayerMoveEffect
	ld a, [hl]
	jp .whichEffect
.whichEffect
	cp CHANGE_USER_TYPE_EFFECT_GROUND
	jp z, .userGround
	cp CHANGE_USER_TYPE_EFFECT_GRASS
	jp z, .userGrass
	cp CHANGE_TARGET_TYPE_EFFECT_FIRE
	jp z, .targetFire
;effects that change your own type
.userGround
	ld b, GROUND
	ld de, UserTypeChangedText
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyTypeChange	;enemy's turn
	jp .playerTypeChange		;player's turn
.userGrass
	ld b, GRASS
	ld de, UserTypeChangedText
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .enemyTypeChange	;enemy's turn
	jp .playerTypeChange		;player's turn
;effects that change the enemy's type
.targetFire
	;accuracy check
	callfar MoveHitTest
	ld a, [wMoveMissed]
	and a
	jr nz, .failed
	;accuracy check end
	ld b, FIRE
	ld de, TargetTypeChangedText
	ldh a, [hWhoseTurn]	; 0 on player's turn, 1 on enemy's turn
	and a
	jp nz, .playerTypeChange	;enemy's turn
	jp .enemyTypeChange		;player's turn
;Type-changing code.
.playerTypeChange			;changing the player's type. This doesn't necessarily mean it's the player's turn.
	ld hl, wBattleMonType1
	ld [hl], b
	ld hl, wBattleMonType2
	ld [hl], b
	ld a, POOF_ANIM
	callfar PlayCurrentMoveAnimation
	;message: "@MON's type changed!"
	ld h, d
	ld l, e
	jp PrintText
	ret
.enemyTypeChange			;changing the enemy's type. This doesn't necessarily mean it's the enemy's turn.
	ld hl, wEnemyMonType1
	ld [hl], b
	ld hl, wEnemyMonType2
	ld [hl], b
	ld a, POOF_ANIM
	callfar PlayCurrentMoveAnimation
	;message: "@MON's type changed!"
	ld h, d
	ld l, e
	jp PrintText
	ret
.failed
	callfar PrintMoveFailureText
	ret

UserTypeChangedText:
	text_far _UserTypeChangedText
	text_end

TargetTypeChangedText:
	text_far _TargetTypeChangedText
	text_end
	