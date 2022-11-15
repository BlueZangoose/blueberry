DisplayEffectiveness:
	ld a, [wDamageMultipliers]
	and $7F
	and a
	ret z ; neutral
	cp %00000011
	ret z ; SE to one type and NVE to the other type
	and %00000001
	ld hl, SuperEffectiveText
	jr z, .done
	ld hl, NotVeryEffectiveText
.done
	jp PrintText

SuperEffectiveText:
	text_far _SuperEffectiveText
	text_end

NotVeryEffectiveText:
	text_far _NotVeryEffectiveText
	text_end
