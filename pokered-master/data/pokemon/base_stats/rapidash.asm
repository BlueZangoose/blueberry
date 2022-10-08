	db DEX_RAPIDASH ; pokedex id

	db  65, 100,  70, 105,  80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/rapidash.pic", 0, 1 ; sprite dimensions
	dw RapidashPicFront, RapidashPicBack

	db ASH_ATTACK, PUPPY_EYES, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	STATIC_FLUFF	,	LANCE_CHARGE	,	FLAMETAIL	,	EMBERSKIN	,	HEADWIND	,	DROPKICK	,	CRUSH	,	RAISEHACKLES	,	STRENGTH
	; end

	db 0 ; padding
