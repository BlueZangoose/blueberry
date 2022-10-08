	db DEX_VENOMOTH ; pokedex id

	db  70,  65,  60,  90,  90
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/venomoth.pic", 0, 1 ; sprite dimensions
	dw VenomothPicFront, VenomothPicBack

	db PIERCE_STING, PARASTING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		LENS_SHIFT	,	LEECH_BITE	,	FLASH	,	STATIC_FLUFF	,	FLY	,	HEADWIND	,	TERRIFY	,	SUPERSAP	,	HEMOSAP	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE
	; end

	db 0 ; padding
