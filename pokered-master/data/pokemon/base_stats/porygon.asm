	db DEX_PORYGON ; pokedex id

	db  65,  60,  70,  40,  75
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 130 ; base exp

	INCBIN "gfx/pokemon/front/porygon.pic", 0, 1 ; sprite dimensions
	dw PorygonPicFront, PorygonPicBack

	db JOLT, AIR_COOLING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm	LENS_SHIFT	,	FLASH	,	LIGHTNING	,	ION_BEAM	,	EMBERSKIN	,	VANISH	,	SHADOW_CLONE	,	PSIONIC_SLAM	,	TELEPORT	,	DAZZLE
	; end

	db 0 ; padding
