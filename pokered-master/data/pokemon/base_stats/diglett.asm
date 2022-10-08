	db DEX_DIGLETT ; pokedex id

	db  10,  55,  25,  95,  45
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 81 ; base exp

	INCBIN "gfx/pokemon/front/diglett.pic", 0, 1 ; sprite dimensions
	dw DiglettPicFront, DiglettPicBack

	db DASH_ATTACK, BURROW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	SURPRISEPNCH	,	PRACTICEPNCH	,	LEAF_CAMO	,	LEAF_TRAP	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	SEISMIC_ROCK	,	STRENGTH
	; end

	db 0 ; padding
