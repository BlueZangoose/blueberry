	db DEX_GRAVELER ; pokedex id

	db  55,  95, 115,  35,  45
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 120 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/graveler.pic", 0, 1 ; sprite dimensions
	dw GravelerPicFront, GravelerPicBack

	db PEBBLESTRIKE, GRIND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		PRACTICEPNCH	,	CHLOROBURST	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	ICE_BOULDER	,	CRUSH	,	SEISMIC_ROCK	,	STRENGTH	,	BOULDER_SLAM																																																										
	; end

	db 0 ; padding
