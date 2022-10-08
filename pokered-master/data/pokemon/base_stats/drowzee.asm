	db DEX_DROWZEE ; pokedex id

	db  60,  48,  45,  42,  90
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 102 ; base exp

	INCBIN "gfx/pokemon/front/drowzee.pic", 0, 1 ; sprite dimensions
	dw DrowzeePicFront, DrowzeePicBack

	db LULL, SPOOKYENERGY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	SURPRISEPNCH	,	PRACTICEPNCH	,	SHADOW_CLONE	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE	,	SEISMIC_ROCK	,	STRENGTH																																													
	; end

	db 0 ; padding
