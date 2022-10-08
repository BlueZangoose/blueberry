	db DEX_DODUO ; pokedex id

	db  35,  85,  45,  75,  35
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp

	INCBIN "gfx/pokemon/front/doduo.pic", 0, 1 ; sprite dimensions
	dw DoduoPicFront, DoduoPicBack

	db TALON_ATTACK, EAGLE_EYE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		MANTIS_SLASH	,	WING_STRIKE	,	HEADWIND	,	DROPKICK	,	DIG	,	SAND_ARMOR	,	BURROW	,	RAISEHACKLES	,	CLEAR_MIND																																															
	; end

	db 0 ; padding
