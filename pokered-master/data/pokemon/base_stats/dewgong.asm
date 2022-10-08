	db DEX_DEWGONG ; pokedex id

	db  90,  70,  80,  70,  95
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/front/dewgong.pic", 0, 1 ; sprite dimensions
	dw DewgongPicFront, DewgongPicBack

	db FOAM_SPRAY, CUTE_BARK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	LANCE_CHARGE	,	CHILLTAIL	,	CRUSH	,	RAISEHACKLES	,	STRENGTH	,	STONETAIL	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL	
	; end

	db 0 ; padding
