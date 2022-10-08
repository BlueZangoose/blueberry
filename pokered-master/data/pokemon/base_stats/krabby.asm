	db DEX_KRABBY ; pokedex id

	db  30, 105,  90,  50,  25
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp

	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1 ; sprite dimensions
	dw KrabbyPicFront, KrabbyPicBack

	db FOAM_SPRAY, CLAW_SWIPE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	MANTIS_SLASH	,	LEAF_CAMO	,	DIG	,	SAND_ARMOR	,	BURROW	,	CRUSH	,	SEISMIC_ROCK	,	STRENGTH	,	SURF																																															
	; end

	db 0 ; padding
