	db DEX_ARCANINE ; pokedex id

	db  90, 110,  80,  95,  80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/arcanine.pic", 0, 1 ; sprite dimensions
	dw ArcaninePicFront, ArcaninePicBack

	db CLAW_SWIPE, MIGHTY_ROAR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	STATIC_FLUFF	,	AURA_IMPACT	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	HEADWIND	,	TERRIFY	,	DIG	,	BURROW	,	RAISEHACKLES	
	; end

	db 0 ; padding
