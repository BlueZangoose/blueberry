	db DEX_ARBOK ; pokedex id

	db  60,  85,  69,  80,  65
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/arbok.pic", 0, 1 ; sprite dimensions
	dw ArbokPicFront, ArbokPicBack

	db INJECT, SHED_SKIN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		LENS_SHIFT	,	LEECH_BITE	,	WYRMTAIL	,	FLAMETAIL	,	VANISH	,	TERRIFY	,	SHADOW_CLONE	,	LEAF_CAMO	,	SUPERSAP	,	DIG	,	BURROW	,	SOFTBOILED	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT	,	DAZZLE	,	STONETAIL	,	HYDROTAIL
	; end

	db 0 ; padding
