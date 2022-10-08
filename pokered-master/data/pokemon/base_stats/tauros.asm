	db DEX_TAUROS ; pokedex id

	db  75, 100,  95, 110,  70
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1 ; sprite dimensions
	dw TaurosPicFront, TaurosPicBack

	db DASH_ATTACK, DUST_KICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		LANCE_CHARGE	,	FLAMETAIL	,	HEADWIND	,	DROPKICK	,	SAND_ARMOR	,	BURROW	,	CRUSH	,	RAISEHACKLES	,	STRENGTH
	; end

	db 0 ; padding
