	db DEX_MAROWAK ; pokedex id

	db  60,  80, 110,  45,  50
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/marowak.pic", 0, 1 ; sprite dimensions
	dw MarowakPicFront, MarowakPicBack

	db DUST_KICK, SPOOKYENERGY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		PRACTICEPNCH	,	AURA_IMPACT	,	OMEN_SCREAM	,	TERRIFY	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	RAISEHACKLES	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	HYDROTAIL																																																						
	; end

	db 0 ; padding
