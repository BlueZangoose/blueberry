	db DEX_KANGASKHAN ; pokedex id

	db 105,  95,  80,  90,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1 ; sprite dimensions
	dw KangaskhanPicFront, KangaskhanPicBack

	db CLAW_SWIPE, POSTURE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	SURPRISEPNCH	,	PRACTICEPNCH	,	FLAMETAIL	,	DROPKICK	,	SHADOW_CLONE	,	DIG	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	CRUSH	,	RAISEHACKLES	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	HYDROTAIL																																																		
	; end

	db 0 ; padding
