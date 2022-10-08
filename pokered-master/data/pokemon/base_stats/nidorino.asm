	db DEX_NIDORINO ; pokedex id

	db  61,  72,  57,  65,  55
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp

	INCBIN "gfx/pokemon/front/nidorino.pic", 0, 1 ; sprite dimensions
	dw NidorinoPicFront, NidorinoPicBack

	db INJECT, BUCK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		LANCE_CHARGE	,	FLAMETAIL	,	STARFIRE	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	MOONFROST	,	CHILLTAIL	,	FALLING_STAR	,	CRUSH	,	RAISEHACKLES	,	BLACK_GAS	,	ACID_SPIT	,	SLIME_COAT	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	HYDROTAIL																																										
	; end

	db 0 ; padding
