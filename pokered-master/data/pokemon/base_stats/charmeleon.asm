	db DEX_CHARMELEON ; pokedex id

	db  58,  64,  58,  80,  65
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp

	INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1 ; sprite dimensions
	dw CharmeleonPicFront, CharmeleonPicBack

	db SCORCH, CLAW_SWIPE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		MANTIS_SLASH	,	WYRMTAIL	,	FLASH	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	TERRIFY	,	BURROW	,	RAISEHACKLES	,	SEISMIC_ROCK	,	STONETAIL	
	; end

	db 0 ; padding
