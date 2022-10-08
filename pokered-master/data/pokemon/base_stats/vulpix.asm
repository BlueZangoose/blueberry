	db DEX_VULPIX ; pokedex id

	db  38,  41,  40,  65,  65
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/vulpix.pic", 0, 1 ; sprite dimensions
	dw VulpixPicFront, VulpixPicBack

	db GHOSTFIRE, CUTE_BARK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	ION_BEAM	,	STATIC_FLUFF	,	AURA_IMPACT	,	FLAMETAIL	,	EMBERSKIN	,	STARFIRE	,	VANISH	,	SHADOW_CLONE	,	DIG	,	BURROW	,	MOONFROST	,	RAISEHACKLES	,	PSIONIC_SLAM	,	TELEPORT	,	DAZZLE
	; end

	db 0 ; padding
