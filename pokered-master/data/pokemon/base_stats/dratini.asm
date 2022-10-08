	db DEX_DRATINI ; pokedex id

	db  41,  64,  45,  50,  50
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/dratini.pic", 0, 1 ; sprite dimensions
	dw DratiniPicFront, DratiniPicBack

	db ICED_WATER, WATERJET, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLASH	,	LIGHTNING	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	STARFIRE	,	DIG	,	BURROW	,	MOONFROST	,	CHILLTAIL	,	CLEAR_MIND	,	STONETAIL	,	PRESSURE_CUT	,	SURF	,	HYDROTAIL																																																		
	; end

	db 0 ; padding
