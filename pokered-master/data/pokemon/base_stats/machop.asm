	db DEX_MACHOP ; pokedex id

	db  70,  80,  50,  35,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp

	INCBIN "gfx/pokemon/front/machop.pic", 0, 1 ; sprite dimensions
	dw MachopPicFront, MachopPicBack

	db JAB, WARMUP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		SURPRISEPNCH	,	PRACTICEPNCH	,	AURA_IMPACT	,	DROPKICK	,	SHADOW_CLONE	,	SAND_ARMOR	,	BURROW	,	CRUSH	,	CLEAR_MIND	,	SEISMIC_ROCK	,	STRENGTH																																																	
	; end

	db 0 ; padding
