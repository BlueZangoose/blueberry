	db DEX_MAGNEMITE ; pokedex id

	db  25,  35,  70,  45,  95
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 89 ; base exp

	INCBIN "gfx/pokemon/front/magnemite.pic", 0, 1 ; sprite dimensions
	dw MagnemitePicFront, MagnemitePicBack

	db JOLT, AIR_COOLING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		LENS_SHIFT	,	FLASH	,	LIGHTNING	,	ION_BEAM	,	EMBERSKIN	,	STARFIRE	,	FLY	,	HEADWIND	,	PSIONIC_SLAM	,	DAZZLE																																																														
	; end

	db 0 ; padding
