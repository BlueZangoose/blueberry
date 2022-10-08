	db DEX_RATICATE ; pokedex id

	db  55,  81,  60,  97,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

	db JAW_SNAP, DUSTBATH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CUT	,	LEECH_BITE	,	STATIC_FLUFF	,	SURPRISEPNCH	,	AURA_IMPACT	,	FLAMETAIL	,	VANISH	,	OMEN_SCREAM	,	TERRIFY	,	SHADOW_CLONE	,	LEAF_CAMO	,	DIG	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	RAISEHACKLES	,	STONETAIL	,	HYDROTAIL	
	; end

	db 0 ; padding
