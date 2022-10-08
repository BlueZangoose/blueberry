	db DEX_MOLTRES ; pokedex id

	db  90, 100,  90,  90, 125
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/moltres.pic", 0, 1 ; sprite dimensions
	dw MoltresPicFront, MoltresPicBack

	db TALON_ATTACK, ASH_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	AURA_IMPACT	,	LAVA_GEYSER	,	FLAMETAIL	,	EMBERSKIN	,	STARFIRE	,	FLY	,	WING_STRIKE	,	HEADWIND	,	OMEN_SCREAM	,	FALLING_STAR	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE																																																						
	; end

	db 0 ; padding
