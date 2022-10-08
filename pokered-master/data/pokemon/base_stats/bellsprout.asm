	db DEX_BELLSPROUT ; pokedex id

	db  50,  75,  35,  40,  70
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 84 ; base exp

	INCBIN "gfx/pokemon/front/bellsprout.pic", 0, 1 ; sprite dimensions
	dw BellsproutPicFront, BellsproutPicBack

	db ACID_SPIT, POLLEN_ARMOR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	LEECH_BITE	,	CHLOROBURST	,	LEAF_CAMO	,	SUPERSAP	,	LEAF_TRAP	,	BLACK_GAS	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT
	; end

	db 0 ; padding
