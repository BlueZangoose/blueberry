	db DEX_FARFETCHD ; pokedex id

	db  52,  65,  55,  60,  58
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/farfetchd.pic", 0, 1 ; sprite dimensions
	dw FarfetchdPicFront, FarfetchdPicBack

	db WING_STRIKE, DUST_KICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	MANTIS_SLASH	,	LANCE_CHARGE	,	FLY	,	WING_STRIKE	,	DROPKICK	,	LEAF_CAMO	,	SAND_ARMOR	,	BURROW	,	RAISEHACKLES	,	SURF																																																												
	; end

	db 0 ; padding
