	db DEX_MAGNETON ; pokedex id

	db  50,  60,  95,  70, 120
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1 ; sprite dimensions
	dw MagnetonPicFront, MagnetonPicBack

	db JOLT, AIR_COOLING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		LENS_SHIFT	,	FLASH	,	LIGHTNING	,	ION_BEAM	,	EMBERSKIN	,	STARFIRE	,	FLY	,	HEADWIND	,	PSIONIC_SLAM	,	DAZZLE																																																														
	; end

	db 0 ; padding
