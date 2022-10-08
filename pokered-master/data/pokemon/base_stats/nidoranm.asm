	db DEX_NIDORAN_M ; pokedex id

	db  46,  57,  40,  50,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

	db INJECT, BUCK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		LANCE_CHARGE	,	FLAMETAIL	,	STARFIRE	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	MOONFROST	,	CHILLTAIL	,	FALLING_STAR	,	CRUSH	,	RAISEHACKLES	,	BLACK_GAS	,	ACID_SPIT	,	SLIME_COAT	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	HYDROTAIL																																										
	; end

	db 0 ; padding
