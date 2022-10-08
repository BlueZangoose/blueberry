	db DEX_TENTACOOL ; pokedex id

	db  40,  40,  35,  70, 100
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/tentacool.pic", 0, 1 ; sprite dimensions
	dw TentacoolPicFront, TentacoolPicBack

	db FOAM_SPRAY, ACID_SPINES, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	VANISH	,	TERRIFY	,	SUPERSAP	,	ACID_SPIT	,	HEMOSAP	,	SLIME_COAT	,	CLEAR_MIND	,	DAZZLE	,	SURF
	; end

	db 0 ; padding
