	db DEX_MANKEY ; pokedex id

	db  40,  80,  35,  70,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db PRACTICEPNCH, DROPKICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		MANTIS_SLASH	,	STATIC_FLUFF	,	SURPRISEPNCH	,	PRACTICEPNCH	,	DROPKICK	,	OMEN_SCREAM	,	DIG	,	BURROW	,	RAISEHACKLES	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH																																																										
	; end

	db 0 ; padding
