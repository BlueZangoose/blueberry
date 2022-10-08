	db DEX_TENTACRUEL ; pokedex id

	db  80,  70,  65, 100, 120
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 60 ; catch rate
	db 205 ; base exp

	INCBIN "gfx/pokemon/front/tentacruel.pic", 0, 1 ; sprite dimensions
	dw TentacruelPicFront, TentacruelPicBack

	db FOAM_SPRAY, ACID_SPINES, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	VANISH	,	TERRIFY	,	SUPERSAP	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT	,	CLEAR_MIND	,	DAZZLE	,	SURF
	; end

	db 0 ; padding
