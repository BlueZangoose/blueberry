	db DEX_FEAROW ; pokedex id

	db  65,  90,  65, 100,  61
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db MULTISLAP, DUSTBATH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		AURA_IMPACT	,	FLY	,	WING_STRIKE	,	HEADWIND	,	TERRIFY	,	DIG	,	SAND_BOMB	,	BURROW	,	RAISEHACKLES	,	ACID_SPIT	,	SLIME_COAT																																																												
	; end

	db 0 ; padding
