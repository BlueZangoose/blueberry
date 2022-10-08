	db DEX_PRIMEAPE ; pokedex id

	db  65, 105,  60,  95,  60
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

	db PRACTICEPNCH, DROPKICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm	MANTIS_SLASH	,	STATIC_FLUFF	,	SURPRISEPNCH	,	PRACTICEPNCH	,	DROPKICK	,	OMEN_SCREAM	,	DIG	,	BURROW	,	RAISEHACKLES	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH
	; end

	db 0 ; padding
