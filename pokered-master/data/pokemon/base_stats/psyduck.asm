	db DEX_PSYDUCK ; pokedex id

	db  50,  52,  48,  55,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1 ; sprite dimensions
	dw PsyduckPicFront, PsyduckPicBack

	db DELIRIUM, DOUSE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm 	FLASH	,	ION_BEAM	,	SHADOW_CLONE	,	BURROW	,	CHILLTAIL	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE	,	SURF	,	HYDROTAIL																												
	; end

	db 0 ; padding
