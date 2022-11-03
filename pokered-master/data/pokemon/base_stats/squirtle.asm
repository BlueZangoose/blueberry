	db DEX_SQUIRTLE ; pokedex id

	db  44,  48,  65,  43,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/front/squirtle.pic", 0, 1 ; sprite dimensions
	dw SquirtlePicFront, SquirtlePicBack

;	db POISONPOLLEN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db FOAM_SPRAY, JAW_SNAP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		ION_BEAM	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	ICE_BOULDER	,	CHILLTAIL	,	CRUSH	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	BOULDER_SLAM	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL
	; end

	db 0 ; padding
