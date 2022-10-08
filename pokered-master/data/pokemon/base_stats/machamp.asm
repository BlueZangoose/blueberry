	db DEX_MACHAMP ; pokedex id

	db  90, 130,  80,  55,  65
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/machamp.pic", 0, 1 ; sprite dimensions
	dw MachampPicFront, MachampPicBack

	db JAB, WARMUP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		SURPRISEPNCH	,	PRACTICEPNCH	,	AURA_IMPACT	,	DROPKICK	,	SHADOW_CLONE	,	SAND_ARMOR	,	BURROW	,	CRUSH	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH																																																		
	; end

	db 0 ; padding
