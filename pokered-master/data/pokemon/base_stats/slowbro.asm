	db DEX_SLOWBRO ; pokedex id

	db  95,  75, 110,  30,  80
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1 ; sprite dimensions
	dw SlowbroPicFront, SlowbroPicBack

	db FOAM_SPRAY, PSYSQUEEZE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	AURA_IMPACT	,	BURROW	,	CHILLTAIL	,	CRUSH	,	SLIME_COAT	,	PSIONIC_SLAM	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	SURF	,	HYDROTAIL
	; end

	db 0 ; padding
