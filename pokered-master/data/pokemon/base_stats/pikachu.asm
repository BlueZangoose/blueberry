	db DEX_PIKACHU ; pokedex id

	db  35,  55,  30,  90,  50
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db JOLT, LEAF_CHOMP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm	FLASH	,	LIGHTNING	,	STATIC_FLUFF	,	FLAMETAIL	,	EMBERSKIN	,	LEAF_CAMO	,	DIG	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	HYDROTAIL
	; end

	db 0 ; padding
