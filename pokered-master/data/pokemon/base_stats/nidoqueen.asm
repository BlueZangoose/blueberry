	db DEX_NIDOQUEEN ; pokedex id

	db  90,  82,  87,  76,  75
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1 ; sprite dimensions
	dw NidoqueenPicFront, NidoqueenPicBack

	db TAR_SLAP, DASH_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLAMETAIL	,	STARFIRE	,	LEAF_CAMO	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	MOONFROST	,	CHILLTAIL	,	FALLING_STAR	,	CRUSH	,	RAISEHACKLES	,	BLACK_GAS	,	ACID_SPIT	,	SLIME_COAT	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	HYDROTAIL																																										
	; end

	db 0 ; padding
