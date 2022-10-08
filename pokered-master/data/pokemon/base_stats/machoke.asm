	db DEX_MACHOKE ; pokedex id

	db  80, 100,  70,  45,  50
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/machoke.pic", 0, 1 ; sprite dimensions
	dw MachokePicFront, MachokePicBack

	db JAB, WARMUP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		SURPRISEPNCH	,	PRACTICEPNCH	,	AURA_IMPACT	,	DROPKICK	,	SHADOW_CLONE	,	SAND_ARMOR	,	BURROW	,	CRUSH	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH																																													
	; end

	db 0 ; padding
