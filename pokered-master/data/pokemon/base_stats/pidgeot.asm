	db DEX_PIDGEOT ; pokedex id

	db  83,  80,  75,  91,  70
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/pidgeot.pic", 0, 1 ; sprite dimensions
	dw PidgeotPicFront, PidgeotPicBack

	db ZEPHYR, POSTURE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm	LENS_SHIFT	,	AURA_IMPACT	,	FLY	,	WING_STRIKE	,	HEADWIND	,	OMEN_SCREAM	,	BURROW	,	RAISEHACKLES	,	CLEAR_MIND																									
	; end

	db 0 ; padding
