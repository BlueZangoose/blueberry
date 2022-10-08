	db DEX_WIGGLYTUFF ; pokedex id

	db 140,  70,  45,  45,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 109 ; base exp

	INCBIN "gfx/pokemon/front/wigglytuff.pic", 0, 1 ; sprite dimensions
	dw WigglytuffPicFront, WigglytuffPicBack

	db ECHO_SONG, LULL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm		LENS_SHIFT	,	FLASH	,	LIGHTNING	,	STATIC_FLUFF	,	SURPRISEPNCH	,	PRACTICEPNCH	,	STARFIRE	,	FLY	,	HEADWIND	,	DROPKICK	,	OMEN_SCREAM	,	ICE_BOULDER	,	MOONFROST	,	FALLING_STAR	,	BLACK_GAS	,	BOULDER_SLAM	,	PRESSURE_CUT	,	SURF
	; end

	db 0 ; padding
