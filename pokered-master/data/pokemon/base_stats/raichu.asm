	db DEX_RAICHU ; pokedex id

	db  60,  90,  55, 100,  90
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

	db JOLT, LEAF_CHOMP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	STATIC_FLUFF	,	FLAMETAIL	,	EMBERSKIN	,	LEAF_CAMO	,	DIG	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	HYDROTAIL
	; end

	db 0 ; padding
