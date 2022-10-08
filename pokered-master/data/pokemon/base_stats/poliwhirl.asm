	db DEX_POLIWHIRL ; pokedex id

	db  65,  65,  65,  90,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp

	INCBIN "gfx/pokemon/front/poliwhirl.pic", 0, 1 ; sprite dimensions
	dw PoliwhirlPicFront, PoliwhirlPicBack

	db FOAM_SPRAY, BURROW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm	SURPRISEPNCH	,	PRACTICEPNCH	,	DROPKICK	,	LEAF_CAMO	,	DIG	,	BURROW	,	ICE_BOULDER	,	SLIME_COAT	,	DAZZLE	,	SEISMIC_ROCK	,	STRENGTH	,	BOULDER_SLAM	,	PRESSURE_CUT	,	SURF	
	; end

	db 0 ; padding
