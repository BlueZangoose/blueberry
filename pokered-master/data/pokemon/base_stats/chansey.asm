	db DEX_CHANSEY ; pokedex id

	db 250,   5,   5,  50, 105
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/chansey.pic", 0, 1 ; sprite dimensions
	dw ChanseyPicFront, ChanseyPicBack

	db SLEEPING_GAS, DELIRIUM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm		STATIC_FLUFF	,	SURPRISEPNCH	,	STARFIRE	,	ICE_BOULDER	,	MOONFROST	,	SOFTBOILED	,	FALLING_STAR	,	BOULDER_SLAM
	; end

	db 0 ; padding
