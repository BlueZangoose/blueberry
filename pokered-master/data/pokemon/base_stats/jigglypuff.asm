	db DEX_JIGGLYPUFF ; pokedex id

	db 115,  45,  20,  20,  25
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	db ECHO_SONG, LULL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm		LENS_SHIFT	,	FLASH	,	LIGHTNING	,	STATIC_FLUFF	,	SURPRISEPNCH	,	PRACTICEPNCH	,	STARFIRE	,	FLY	,	HEADWIND	,	DROPKICK	,	OMEN_SCREAM	,	ICE_BOULDER	,	MOONFROST	,	FALLING_STAR	,	BLACK_GAS	,	BOULDER_SLAM	,	PRESSURE_CUT	,	SURF																													
	; end

	db 0 ; padding
