	db DEX_POLIWRATH ; pokedex id

	db  90,  85,  95,  70,  70
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

	db FOAM_SPRAY, LULL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm	SURPRISEPNCH	,	PRACTICEPNCH	,	DROPKICK	,	LEAF_CAMO	,	DIG	,	BURROW	,	ICE_BOULDER	,	SLIME_COAT	,	DAZZLE	,	SEISMIC_ROCK	,	STRENGTH	,	BOULDER_SLAM	,	PRESSURE_CUT	,	SURF
	; end

	db 0 ; padding
