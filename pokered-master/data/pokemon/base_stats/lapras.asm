	db DEX_LAPRAS ; pokedex id

	db 130,  85,  80,  60,  95
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1 ; sprite dimensions
	dw LaprasPicFront, LaprasPicBack

	db SNOW_BREATH, ICE_TUNNEL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		OMEN_SCREAM	,	SAND_ARMOR	,	CHILLTAIL	,	CRUSH	,	CLEAR_MIND	,	STRENGTH	,	STONETAIL	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL																																																	
	; end

	db 0 ; padding
