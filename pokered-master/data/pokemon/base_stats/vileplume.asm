	db DEX_VILEPLUME ; pokedex id

	db  75,  80,  85,  50, 100
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/vileplume.pic", 0, 1 ; sprite dimensions
	dw VileplumePicFront, VileplumePicBack

	db SEED_SHOT, POISONPOLLEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		OMEN_SCREAM	,	CHLOROBURST	,	LEAF_CAMO	,	SUPERSAP	,	LEAF_TRAP	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	BLACK_GAS	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT
	; end

	db 0 ; padding
