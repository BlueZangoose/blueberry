	db DEX_PIDGEOTTO ; pokedex id

	db  63,  60,  55,  71,  50
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp

	INCBIN "gfx/pokemon/front/pidgeotto.pic", 0, 1 ; sprite dimensions
	dw PidgeottoPicFront, PidgeottoPicBack

	db ZEPHYR, POSTURE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm LENS_SHIFT	,	AURA_IMPACT	,	FLY	,	WING_STRIKE	,	HEADWIND	,	OMEN_SCREAM	,	BURROW	,	RAISEHACKLES	,	CLEAR_MIND			
	; end

	db 0 ; padding
