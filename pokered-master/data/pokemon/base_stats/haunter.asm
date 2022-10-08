	db DEX_HAUNTER ; pokedex id

	db  45,  50,  45,  95, 115
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp

	INCBIN "gfx/pokemon/front/haunter.pic", 0, 1 ; sprite dimensions
	dw HaunterPicFront, HaunterPicBack

	db SLEEPING_GAS, PSYSQUEEZE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		LIGHTNING	,	SURPRISEPNCH	,	PRACTICEPNCH	,	AURA_IMPACT	,	VANISH	,	OMEN_SCREAM	,	TERRIFY	,	SHADOW_CLONE	,	MOONFROST	,	BLACK_GAS	,	ACID_SPIT	,	HEMOSAP	,	PSIONIC_SLAM	,	TELEPORT																																																						
	; end

	db 0 ; padding
