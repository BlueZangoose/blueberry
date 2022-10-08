	db DEX_DRAGONITE ; pokedex id

	db  91, 134,  95,  80, 100
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/dragonite.pic", 0, 1 ; sprite dimensions
	dw DragonitePicFront, DragonitePicBack

	db ICED_WATER, WATERJET, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLASH	,	LIGHTNING	,	LANCE_CHARGE	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	STARFIRE	,	FLY	,	WING_STRIKE	,	HEADWIND	,	MOONFROST	,	CHILLTAIL	,	CRUSH	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH	,	STONETAIL	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL																																								
	; end

	db 0 ; padding
