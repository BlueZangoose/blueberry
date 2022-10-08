	db DEX_ODDISH ; pokedex id

	db  45,  50,  55,  30,  75
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/oddish.pic", 0, 1 ; sprite dimensions
	dw OddishPicFront, OddishPicBack

	db SEED_SHOT, POISONPOLLEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		OMEN_SCREAM	,	CHLOROBURST	,	LEAF_CAMO	,	SUPERSAP	,	LEAF_TRAP	,	DIG	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	BLACK_GAS	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT																																																								
	; end

	db 0 ; padding
