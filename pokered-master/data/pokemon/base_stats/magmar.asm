	db DEX_MAGMAR ; pokedex id

	db  65,  95,  57,  93,  85
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

	db SCORCH, CLAW_SWIPE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLASH	,	PRACTICEPNCH	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	DIG	,	BURROW	,	BLACK_GAS	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL																																																										
	; end

	db 0 ; padding
