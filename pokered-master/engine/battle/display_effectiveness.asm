DisplayEffectiveness:
	ld a, [wDamageMultipliers]
	and $7F
	cp $0A
	ret z		; hopefully it will return for things like status moves and whatnot
	ld a, [wEffectivenessText]
	cp 2
	ret z						; regular text if wEffectivenessText is 2 (standard effectiveness)
	cp 3
	jr z, .superEffective
	cp 4
	jr z, .superSuperEffective
	cp 1
	jr z, .notVeryEffective
	;only remaining option is 0
	jr .veryNotVeryEffective
.superEffective
	ld hl, SuperEffectiveText
	jr .done
.superSuperEffective
	ld hl, SuperEffectiveText
	jr .done
.notVeryEffective
	ld hl, NotVeryEffectiveText
	jr .done
.veryNotVeryEffective
	ld hl, NotVeryEffectiveText
	;fall through
.done
	jp PrintText

SuperEffectiveText:
	text_far _SuperEffectiveText
	text_end

NotVeryEffectiveText:
	text_far _NotVeryEffectiveText
	text_end
