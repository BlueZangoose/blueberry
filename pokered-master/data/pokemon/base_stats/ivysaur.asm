	db DEX_IVYSAUR ; pokedex id

	db  60,  62,  63,  60,  80
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 141 ; base exp

	INCBIN "gfx/pokemon/front/ivysaur.pic", 0, 1 ; sprite dimensions
	dw IvysaurPicFront, IvysaurPicBack

	db SAP, POLLEN_ARMOR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	LEECH_BITE	,	OMEN_SCREAM	,	CHLOROBURST	,	LEAF_CAMO	,	SUPERSAP	,	LEAF_TRAP	,	DIG	,	SAND_ARMOR	,	BURROW	,	CRUSH	,	BLACK_GAS	,	ACID_SPIT	,	SLIME_COAT	,	SEISMIC_ROCK	,	STRENGTH																																																		
	; end
	db 0 ; padding
