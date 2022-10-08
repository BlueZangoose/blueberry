	db DEX_CUBONE ; pokedex id

	db  50,  50,  95,  35,  40
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/cubone.pic", 0, 1 ; sprite dimensions
	dw CubonePicFront, CubonePicBack

	db DUST_KICK, SPOOKYENERGY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		PRACTICEPNCH	,	AURA_IMPACT	,	OMEN_SCREAM	,	TERRIFY	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	RAISEHACKLES	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	HYDROTAIL
	; end

	db 0 ; padding
