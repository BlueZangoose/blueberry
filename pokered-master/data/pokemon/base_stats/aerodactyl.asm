	db DEX_AERODACTYL ; pokedex id

	db  80, 105,  65, 130,  60
	;   hp  atk  def  spd  spc

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp

	INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1 ; sprite dimensions
	dw AerodactylPicFront, AerodactylPicBack

	db TALON_ATTACK, FOSSIL_ZEAL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	WYRMTAIL	,	FLAMETAIL	,	FLY	,	WING_STRIKE	,	HEADWIND	,	DROPKICK	,	OMEN_SCREAM	,	TERRIFY	,	DIG	,	BURROW	,	CHILLTAIL	,	CRUSH	,	STRENGTH	,	STONETAIL	,	HYDROTAIL
	; end

	db 0 ; padding
