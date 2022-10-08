	db DEX_DODRIO ; pokedex id

	db  60, 110,  70, 100,  60
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp

	INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1 ; sprite dimensions
	dw DodrioPicFront, DodrioPicBack

	db TALON_ATTACK, EAGLE_EYE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		MANTIS_SLASH	,	WING_STRIKE	,	HEADWIND	,	DROPKICK	,	DIG	,	SAND_ARMOR	,	BURROW	,	RAISEHACKLES	,	CLEAR_MIND																																																	
	; end

	db 0 ; padding
