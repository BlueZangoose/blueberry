	db DEX_ZAPDOS ; pokedex id

	db  90,  90,  85, 100, 125
	;   hp  atk  def  spd  spc

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp

	INCBIN "gfx/pokemon/front/zapdos.pic", 0, 1 ; sprite dimensions
	dw ZapdosPicFront, ZapdosPicBack

	db TALON_ATTACK, ARC_SPARK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	ION_BEAM	,	STATIC_FLUFF	,	AURA_IMPACT	,	FLY	,	WING_STRIKE	,	HEADWIND	,	OMEN_SCREAM	,	FALLING_STAR	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE	
	; end

	db 0 ; padding
