	db DEX_SNORLAX ; pokedex id

	db 160, 110,  65,  30,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	db CLAW_SWIPE, DUSTBATH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		STATIC_FLUFF	,	DIG	,	SAND_ARMOR	,	BURROW	,	ICE_BOULDER	,	SOFTBOILED	,	CRUSH	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH	,	BOULDER_SLAM
	; end

	db 0 ; padding
