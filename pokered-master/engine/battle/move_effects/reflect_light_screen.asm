ReflectLightScreenEffect_:
	ld hl, wPlayerBattleStatus3
	ld de, wPlayerMoveEffect
	ldh a, [hWhoseTurn]
	and a
	jr z, .reflectLightScreenEffect
	ld hl, wEnemyBattleStatus3
	ld de, wEnemyMoveEffect
.reflectLightScreenEffect
	ld a, [de]
	cp LIGHT_SCREEN_EFFECT
	jr nz, .reflect
	bit HAS_LIGHT_SCREEN_UP, [hl] ; is mon already protected by light screen?
;	jr nz, .moveFailed
	jr nz, .hasLightScreenUp
	set HAS_LIGHT_SCREEN_UP, [hl] ; mon is now protected by light screen
	ld hl, LightScreenProtectedText
	jr .playAnim
.reflect
	bit HAS_REFLECT_UP, [hl] ; is mon already protected by reflect?
;	jr nz, .moveFailed
	jr nz, .hasReflectUp
	set HAS_REFLECT_UP, [hl] ; mon is now protected by reflect
	ld hl, ReflectGainedArmorText
.playAnim
	push hl
	ld hl, PlayCurrentMoveAnimation
	call EffectCallBattleCore
	pop hl
	jp PrintText
;.moveFailed
;	ld c, 50
;	call DelayFrames
;	ld hl, PrintButItFailedText_
;	jp EffectCallBattleCore
.hasLightScreenUp
	ld hl, PrintHasLightScreenUpText_
	jr .finishFailing
.hasReflectUp
	ld hl, PrintHasReflectUpText_
	;fall through
.finishFailing
	ld c, 50
	call DelayFrames
	jp EffectCallBattleCore
	

LightScreenProtectedText:
	text_far _LightScreenProtectedText
	text_end

ReflectGainedArmorText:
	text_far _ReflectGainedArmorText
	text_end

EffectCallBattleCore:
	ld b, BANK(BattleCore)
	jp Bankswitch
