	db DEX_DRAGONAIR ; pokedex id

	db  61,  84,  65,  70,  70
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/dragonair.pic", 0, 1 ; sprite dimensions
	dw DragonairPicFront, DragonairPicBack

	db ICED_WATER, WATERJET, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLASH	,	LIGHTNING	,	LANCE_CHARGE	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	STARFIRE	,	DIG	,	BURROW	,	MOONFROST	,	CHILLTAIL	,	CLEAR_MIND	,	STONETAIL	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL																																		
	; end

	db 0 ; padding
