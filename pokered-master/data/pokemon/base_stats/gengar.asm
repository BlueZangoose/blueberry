	db DEX_GENGAR ; pokedex id

	db  60,  65,  60, 110, 130
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp

	INCBIN "gfx/pokemon/front/gengar.pic", 0, 1 ; sprite dimensions
	dw GengarPicFront, GengarPicBack

	db SLEEPING_GAS, PSYSQUEEZE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		LIGHTNING	,	SURPRISEPNCH	,	PRACTICEPNCH	,	AURA_IMPACT	,	VANISH	,	OMEN_SCREAM	,	TERRIFY	,	SHADOW_CLONE	,	MOONFROST	,	BLACK_GAS	,	ACID_SPIT	,	HEMOSAP	,	PSIONIC_SLAM	,	TELEPORT																																																						
	; end

	db 0 ; padding
