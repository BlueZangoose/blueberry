	db DEX_CHARIZARD ; pokedex id

	db  78,  84,  78, 100,  85
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

	db SCORCH, CLAW_SWIPE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		MANTIS_SLASH	,	WYRMTAIL	,	FLASH	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	FLY	,	WING_STRIKE	,	HEADWIND	,	TERRIFY	,	BURROW	,	RAISEHACKLES	,	SEISMIC_ROCK	,	STONETAIL
	; end

	db 0 ; padding
