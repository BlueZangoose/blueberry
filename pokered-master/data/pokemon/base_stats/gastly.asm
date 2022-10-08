	db DEX_GASTLY ; pokedex id

	db  30,  35,  30,  80, 100
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 95 ; base exp

	INCBIN "gfx/pokemon/front/gastly.pic", 0, 1 ; sprite dimensions
	dw GastlyPicFront, GastlyPicBack

	db SLEEPING_GAS, PSYSQUEEZE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		LIGHTNING	,	AURA_IMPACT	,	VANISH	,	OMEN_SCREAM	,	TERRIFY	,	SHADOW_CLONE	,	MOONFROST	,	BLACK_GAS	,	HEMOSAP	,	PSIONIC_SLAM	,	TELEPORT																																																												
	; end

	db 0 ; padding
