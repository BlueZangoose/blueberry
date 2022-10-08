	db DEX_GYARADOS ; pokedex id

	db  95, 125,  79,  81, 100
	;   hp  atk  def  spd  spc

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/gyarados.pic", 0, 1 ; sprite dimensions
	dw GyaradosPicFront, GyaradosPicBack

	db LEAF_CHOMP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	LIGHTNING	,	FLAMETAIL	,	FLY	,	HEADWIND	,	OMEN_SCREAM	,	TERRIFY	,	BURROW	,	CHILLTAIL	,	CRUSH	,	STRENGTH	,	STONETAIL	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL																																																				
	; end

	db 0 ; padding
