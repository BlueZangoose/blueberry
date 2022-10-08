	db DEX_ARTICUNO ; pokedex id

	db  90,  85, 100,  85, 125
	;   hp  atk  def  spd  spc

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/articuno.pic", 0, 1 ; sprite dimensions
	dw ArticunoPicFront, ArticunoPicBack

	db TALON_ATTACK, AIR_COOLING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		AURA_IMPACT	,	FLY	,	WING_STRIKE	,	HEADWIND	,	OMEN_SCREAM	,	MOONFROST	,	CHILLTAIL	,	FALLING_STAR	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE	
	; end

	db 0 ; padding
