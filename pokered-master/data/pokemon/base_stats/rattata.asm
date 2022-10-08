	db DEX_RATTATA ; pokedex id

	db  30,  56,  35,  72,  25
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/rattata.pic", 0, 1 ; sprite dimensions
	dw RattataPicFront, RattataPicBack

	db JAW_SNAP, DUSTBATH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	LEECH_BITE	,	STATIC_FLUFF	,	SURPRISEPNCH	,	AURA_IMPACT	,	FLAMETAIL	,	VANISH	,	OMEN_SCREAM	,	TERRIFY	,	SHADOW_CLONE	,	LEAF_CAMO	,	DIG	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	RAISEHACKLES	,	STONETAIL	,	HYDROTAIL
	; end

	db 0 ; padding
