	db DEX_CLEFABLE ; pokedex id

	db  95,  70,  73,  60,  85
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

	db GHOSTFIRE, MOON_VEIL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	ION_BEAM	,	STATIC_FLUFF	,	SURPRISEPNCH	,	AURA_IMPACT	,	LAVA_GEYSER	,	EMBERSKIN	,	STARFIRE	,	HEADWIND	,	VANISH	,	SHADOW_CLONE	,	MOONFROST	,	SOFTBOILED	,	FALLING_STAR	,	BLACK_GAS	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE
	; end

	db 0 ; padding
