	db DEX_CHARMANDER ; pokedex id

	db  39,  52,  43,  65,  50
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

	INCBIN "gfx/pokemon/front/charmander.pic", 0, 1 ; sprite dimensions
	dw CharmanderPicFront, CharmanderPicBack

	db SCORCH, CLAW_SWIPE, JOLT, MEGAVOLT ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		MANTIS_SLASH	,	WYRMTAIL	,	FLASH	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	TERRIFY	,	BURROW	,	RAISEHACKLES	,	SEISMIC_ROCK	,	STONETAIL	
	; end

	db 0 ; padding
