	db DEX_KINGLER ; pokedex id

	db  55, 130, 115,  75,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp

	INCBIN "gfx/pokemon/front/kingler.pic", 0, 1 ; sprite dimensions
	dw KinglerPicFront, KinglerPicBack

	db FOAM_SPRAY, CLAW_SWIPE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	MANTIS_SLASH	,	LEAF_CAMO	,	DIG	,	SAND_ARMOR	,	BURROW	,	CRUSH	,	SEISMIC_ROCK	,	STRENGTH	,	SURF																																																		
	; end

	db 0 ; padding
