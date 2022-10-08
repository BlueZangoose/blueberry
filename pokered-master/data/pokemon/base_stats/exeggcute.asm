	db DEX_EXEGGCUTE ; pokedex id

	db  60,  40,  80,  40,  60
	;   hp  atk  def  spd  spc

	db GRASS, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 98 ; base exp

	INCBIN "gfx/pokemon/front/exeggcute.pic", 0, 1 ; sprite dimensions
	dw ExeggcutePicFront, ExeggcutePicBack

	db GRASS_BLADES, POLLEN_ARMOR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm		SHADOW_CLONE	,	CHLOROBURST	,	LEAF_CAMO	,	SUPERSAP	,	BURROW	,	ICE_BOULDER	,	SOFTBOILED	,	PSIONIC_SLAM	,	BOULDER_SLAM																																																																
	; end

	db 0 ; padding
