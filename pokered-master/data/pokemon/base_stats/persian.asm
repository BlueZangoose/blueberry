	db DEX_PERSIAN ; pokedex id

	db  65,  70,  60, 115,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/persian.pic", 0, 1 ; sprite dimensions
	dw PersianPicFront, PersianPicBack

	db CLAW_SWIPE, PRACTICEPNCH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	MANTIS_SLASH	,	LENS_SHIFT	,	STATIC_FLUFF	,	SURPRISEPNCH	,	FLAMETAIL	,	OMEN_SCREAM	,	BURROW	,	CHILLTAIL	,	RAISEHACKLES	,	PSIONIC_SLAM	,	STONETAIL	,	HYDROTAIL																																																								
	; end

	db 0 ; padding
