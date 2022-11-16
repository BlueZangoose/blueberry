PlayApplyingAttackSound:
; play a different sound depending if move is not very effective, neutral, or super-effective
; don't play any sound at all if move is ineffective
	call WaitForSoundToFinish
	ld a, [wDamageMultipliers]
	and $7f
	ret z

	ld a, [wEffectivenessText]
	cp 2
	jr z, .normalEffective						; regular text if wEffectivenessText is 2 (standard effectiveness)
	cp 3
	jr z, .superEffective
	cp 4
	jr z, .superSuperEffective
	cp 1
	jr z, .notVeryEffective
	;only remaining option is 0
	jr .veryNotVeryEffective
.normalEffective
	ld a, $20
	ld b, $30
	ld c, SFX_DAMAGE
	jr .playSound
.superEffective
	ld a, $e0
	ld b, $ff
	ld c, SFX_SUPER_EFFECTIVE
	jr .playSound
.superSuperEffective
	ld a, $e0
	ld b, $ff
	ld c, SFX_SUPER_EFFECTIVE
	jr .playSound
.notVeryEffective
	ld a, $50
	ld b, $1
	ld c, SFX_NOT_VERY_EFFECTIVE
	jr .playSound
.veryNotVeryEffective
	ld a, $50
	ld b, $1
	ld c, SFX_NOT_VERY_EFFECTIVE
	;fall through
.playSound
	ld [wFrequencyModifier], a
	ld a, b
	ld [wTempoModifier], a
	ld a, c
	jp PlaySound
