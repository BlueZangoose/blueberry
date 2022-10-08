	db DEX_CLEFAIRY ; pokedex id

	db  70,  45,  48,  35,  60
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1 ; sprite dimensions
	dw ClefairyPicFront, ClefairyPicBack

	db GHOSTFIRE, MOON_VEIL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	ION_BEAM	,	STATIC_FLUFF	,	SURPRISEPNCH	,	AURA_IMPACT	,	LAVA_GEYSER	,	EMBERSKIN	,	STARFIRE	,	HEADWIND	,	VANISH	,	SHADOW_CLONE	,	MOONFROST	,	SOFTBOILED	,	FALLING_STAR	,	BLACK_GAS	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE	
	; end

	db 0 ; padding
