	db DEX_ELECTABUZZ ; pokedex id

	db  65,  83,  57, 105,  85
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1 ; sprite dimensions
	dw ElectabuzzPicFront, ElectabuzzPicBack

	db ARC_SPARK, CLAW_SWIPE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	MANTIS_SLASH	,	FLASH	,	LIGHTNING	,	STATIC_FLUFF	,	PRACTICEPNCH	,	EMBERSKIN	,	DIG	,	SAND_ARMOR	,	BURROW	,	RAISEHACKLES	,	SEISMIC_ROCK	,	STRENGTH																																																								
	; end

	db 0 ; padding
