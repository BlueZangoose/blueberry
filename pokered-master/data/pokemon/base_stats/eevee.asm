	db DEX_EEVEE ; pokedex id

	db  55,  55,  50,  55,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp

	INCBIN "gfx/pokemon/front/eevee.pic", 0, 1 ; sprite dimensions
	dw EeveePicFront, EeveePicBack

	db DASH_ATTACK, CUTE_BARK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		WYRMTAIL	,	FLASH	,	STATIC_FLUFF	,	FLAMETAIL	,	EMBERSKIN	,	DIG	,	SAND_ARMOR	,	BURROW	,	CHILLTAIL	,	RAISEHACKLES	,	STONETAIL	,	HYDROTAIL																																																
	; end

	db 0 ; padding
