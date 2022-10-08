	db DEX_SPEAROW ; pokedex id

	db  40,  60,  30,  70,  31
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/spearow.pic", 0, 1 ; sprite dimensions
	dw SpearowPicFront, SpearowPicBack

	db MULTISLAP, DUSTBATH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		AURA_IMPACT	,	FLY	,	WING_STRIKE	,	HEADWIND	,	TERRIFY	,	DIG	,	SAND_BOMB	,	BURROW	,	RAISEHACKLES	,	ACID_SPIT	,	SLIME_COAT	
	; end

	db 0 ; padding
