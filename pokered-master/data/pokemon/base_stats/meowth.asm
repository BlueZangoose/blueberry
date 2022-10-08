	db DEX_MEOWTH ; pokedex id

	db  40,  45,  35,  90,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/meowth.pic", 0, 1 ; sprite dimensions
	dw MeowthPicFront, MeowthPicBack

	db CLAW_SWIPE, PRACTICEPNCH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	MANTIS_SLASH	,	LENS_SHIFT	,	STATIC_FLUFF	,	SURPRISEPNCH	,	FLAMETAIL	,	OMEN_SCREAM	,	BURROW	,	CHILLTAIL	,	RAISEHACKLES	,	PSIONIC_SLAM	,	STONETAIL	,	HYDROTAIL																																																								
	; end

	db 0 ; padding
