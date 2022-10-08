	db DEX_LICKITUNG ; pokedex id

	db  90,  55,  75,  30,  60
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickitung.pic", 0, 1 ; sprite dimensions
	dw LickitungPicFront, LickitungPicBack

	db MULTISLAP, DOUSE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLAMETAIL	,	BURROW	,	CHILLTAIL	,	SOFTBOILED	,	CRUSH	,	ACID_SPIT	,	SLIME_COAT	,	STRENGTH	,	STONETAIL	,	HYDROTAIL																																																
	; end

	db 0 ; padding
