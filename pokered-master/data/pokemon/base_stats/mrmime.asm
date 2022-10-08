	db DEX_MR_MIME ; pokedex id

	db  40,  45,  65,  90, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1 ; sprite dimensions
	dw MrMimePicFront, MrMimePicBack

	db MULTISLAP, PSYSHIELD, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		SURPRISEPNCH	,	PRACTICEPNCH	,	TERRIFY	,	SHADOW_CLONE	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE	,	SEISMIC_ROCK	,	STRENGTH																																																														
	; end

	db 0 ; padding
