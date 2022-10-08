	db DEX_SEEL ; pokedex id

	db  65,  45,  55,  45,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/seel.pic", 0, 1 ; sprite dimensions
	dw SeelPicFront, SeelPicBack

	db FOAM_SPRAY, CUTE_BARK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	LANCE_CHARGE	,	CHILLTAIL	,	CRUSH	,	RAISEHACKLES	,	STRENGTH	,	STONETAIL	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL
	; end

	db 0 ; padding
