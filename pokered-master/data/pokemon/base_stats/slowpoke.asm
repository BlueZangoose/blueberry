	db DEX_SLOWPOKE ; pokedex id

	db  90,  65,  65,  15,  40
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp

	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1 ; sprite dimensions
	dw SlowpokePicFront, SlowpokePicBack

	db FOAM_SPRAY, PSYSQUEEZE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	AURA_IMPACT	,	BURROW	,	CHILLTAIL	,	CRUSH	,	SLIME_COAT	,	PSIONIC_SLAM	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	SURF	,	HYDROTAIL
	; end

	db 0 ; padding
