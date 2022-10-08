	db DEX_NINETALES ; pokedex id

	db  73,  76,  75, 100, 100
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db GHOSTFIRE, CUTE_BARK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	ION_BEAM	,	STATIC_FLUFF	,	AURA_IMPACT	,	FLAMETAIL	,	EMBERSKIN	,	STARFIRE	,	VANISH	,	SHADOW_CLONE	,	DIG	,	BURROW	,	MOONFROST	,	RAISEHACKLES	,	PSIONIC_SLAM	,	TELEPORT	,	DAZZLE																																																
	; end

	db 0 ; padding
