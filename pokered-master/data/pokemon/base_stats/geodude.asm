	db DEX_GEODUDE ; pokedex id

	db  40,  80, 100,  20,  30
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 86 ; base exp

	INCBIN "gfx/pokemon/front/geodude.pic", 0, 1 ; sprite dimensions
	dw GeodudePicFront, GeodudePicBack

	db STONE_FIST, GRIND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		PRACTICEPNCH	,	CHLOROBURST	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	ICE_BOULDER	,	CRUSH	,	SEISMIC_ROCK	,	STRENGTH	,	BOULDER_SLAM																																																										
	; end

	db 0 ; padding
