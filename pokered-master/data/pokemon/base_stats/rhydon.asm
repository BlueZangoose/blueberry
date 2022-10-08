	db DEX_RHYDON ; pokedex id

	db 105, 130, 120,  40,  45
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

	db DASH_ATTACK, MIGHTY_ROAR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	LANCE_CHARGE	,	FLAMETAIL	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	CRUSH	,	RAISEHACKLES	,	STRENGTH	,	STONETAIL
	; end

	db 0 ; padding
