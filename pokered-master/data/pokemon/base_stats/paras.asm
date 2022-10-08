	db DEX_PARAS ; pokedex id

	db  35,  70,  55,  25,  55
	;   hp  atk  def  spd  spc

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/paras.pic", 0, 1 ; sprite dimensions
	dw ParasPicFront, ParasPicBack

	db SAP, POISONPOLLEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		CUT	,	MANTIS_SLASH	,	LENS_SHIFT	,	LEECH_BITE	,	TERRIFY	,	SHADOW_CLONE	,	DIG	,	SAND_ARMOR	,	BURROW	,	BLACK_GAS																																																														
	; end

	db 0 ; padding
