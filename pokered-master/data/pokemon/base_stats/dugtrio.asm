	db DEX_DUGTRIO ; pokedex id

	db  35,  80,  50, 120,  70
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

	db DASH_ATTACK, BURROW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	SURPRISEPNCH	,	PRACTICEPNCH	,	LEAF_CAMO	,	LEAF_TRAP	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	SEISMIC_ROCK	,	STRENGTH																																																
	; end

	db 0 ; padding
