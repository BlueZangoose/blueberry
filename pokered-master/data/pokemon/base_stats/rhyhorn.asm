	db DEX_RHYHORN ; pokedex id

	db  80,  85,  95,  25,  30
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/rhyhorn.pic", 0, 1 ; sprite dimensions
	dw RhyhornPicFront, RhyhornPicBack

	db DASH_ATTACK, MIGHTY_ROAR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	LANCE_CHARGE	,	FLAMETAIL	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	CRUSH	,	RAISEHACKLES	,	STRENGTH	,	STONETAIL
	; end

	db 0 ; padding
