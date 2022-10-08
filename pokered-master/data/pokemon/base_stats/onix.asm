	db DEX_ONIX ; pokedex id

	db  35,  45, 160,  70,  30
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/onix.pic", 0, 1 ; sprite dimensions
	dw OnixPicFront, OnixPicBack

	db GRAVELSHOWER, EARTH_TRAP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLAMETAIL	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	ICE_BOULDER	,	CHILLTAIL	,	CRUSH	,	STRENGTH	,	STONETAIL	,	BOULDER_SLAM	,	HYDROTAIL																																																								
	; end

	db 0 ; padding
