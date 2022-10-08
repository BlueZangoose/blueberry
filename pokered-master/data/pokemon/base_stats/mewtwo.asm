	db DEX_MEWTWO ; pokedex id

	db 106, 110,  90, 130, 154
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/mewtwo.pic", 0, 1 ; sprite dimensions
	dw MewtwoPicFront, MewtwoPicBack

	db DELIRIUM, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLASH	,	LIGHTNING	,	ION_BEAM	,	SURPRISEPNCH	,	PRACTICEPNCH	,	AURA_IMPACT	,	FLAMETAIL	,	STARFIRE	,	FLY	,	VANISH	,	OMEN_SCREAM	,	TERRIFY	,	SHADOW_CLONE	,	MOONFROST	,	CHILLTAIL	,	FALLING_STAR	,	CRUSH	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	PRESSURE_CUT	,	HYDROTAIL																												
	; end

	db 0 ; padding
