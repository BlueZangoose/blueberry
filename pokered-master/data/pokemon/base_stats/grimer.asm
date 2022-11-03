	db DEX_GRIMER ; pokedex id

	db  80,  80,  50,  25,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/front/grimer.pic", 0, 1 ; sprite dimensions
	dw GrimerPicFront, GrimerPicBack

	db ACID_SPIT, STONE_FIST, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		SURPRISEPNCH	,	PRACTICEPNCH	,	EMBERSKIN	,	VANISH	,	TERRIFY	,	SHADOW_CLONE	,	CHLOROBURST	,	SUPERSAP	,	SAND_BOMB	,	SAND_ARMOR	,	BURROW	,	SOFTBOILED	,	CRUSH	,	BLACK_GAS	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT	,	STRENGTH																																														
	; end

	db 0 ; padding
