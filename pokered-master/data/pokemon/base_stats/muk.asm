	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50,  65
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	db ACID_SPIT, STONE_FIST, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		SURPRISEPNCH	,	PRACTICEPNCH	,	EMBERSKIN	,	VANISH	,	TERRIFY	,	SHADOW_CLONE	,	CHLOROBURST	,	SUPERSAP	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	SOFTBOILED	,	CRUSH	,	BLACK_GAS	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT	,	STRENGTH																																														
	; end

	db 0 ; padding
