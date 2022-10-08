	db DEX_STARYU ; pokedex id

	db  30,  45,  55,  85,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/staryu.pic", 0, 1 ; sprite dimensions
	dw StaryuPicFront, StaryuPicBack

	db ION_BEAM, LENS_SHIFT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		LENS_SHIFT	,	FLASH	,	LIGHTNING	,	ION_BEAM	,	STARFIRE	,	SHADOW_CLONE	,	LEAF_CAMO	,	BURROW	,	MOONFROST	,	FALLING_STAR	,	TELEPORT	,	DAZZLE
	; end

	db 0 ; padding
