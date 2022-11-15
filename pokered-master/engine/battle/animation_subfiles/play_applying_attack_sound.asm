PlayApplyingAttackSound:
; play a different sound depending if move is not very effective, neutral, or super-effective
; don't play any sound at all if move is ineffective
	call WaitForSoundToFinish
	ld a, [wDamageMultipliers]
	and $7f
;	ret z
;	cp 10
;	ld a, $20
;	ld b, $30
;	ld c, SFX_DAMAGE
;	jr z, .playSound
	cp $7f
	ret z ; immune
; super effective
	ld d, a
	cp %00000010
	ld a, $e0
	ld b, $ff
	ld c, SFX_SUPER_EFFECTIVE
;	jr nc, .playSound
	jr z, .playSound
; not very effective
	ld a, d
	cp %00000001
	ld a, $50
	ld b, $1
	ld c, SFX_NOT_VERY_EFFECTIVE
	jr nc, .playSound
; neutral
	ld a, $20
	ld b, $30
	ld c, SFX_DAMAGE
.playSound
	ld [wFrequencyModifier], a
	ld a, b
	ld [wTempoModifier], a
	ld a, c
	jp PlaySound