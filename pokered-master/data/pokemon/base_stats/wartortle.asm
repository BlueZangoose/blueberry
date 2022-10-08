	db DEX_WARTORTLE ; pokedex id

	db  59,  63,  80,  58,  65
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

	db FOAM_SPRAY, JAW_SNAP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		ION_BEAM	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	ICE_BOULDER	,	CHILLTAIL	,	CRUSH	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	BOULDER_SLAM	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL
	; end

	db 0 ; padding
