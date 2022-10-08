	db DEX_PINSIR ; pokedex id

	db  65, 125, 100,  85,  55
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/pinsir.pic", 0, 1 ; sprite dimensions
	dw PinsirPicFront, PinsirPicBack

	db LEAF_CHOMP, EARTH_TRAP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm	CUT	,	MANTIS_SLASH	,	LEECH_BITE	,	LANCE_CHARGE	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	SEISMIC_ROCK	,	STRENGTH
	; end

	db 0 ; padding
