	db DEX_ABRA ; pokedex id

	db  25,  20,  15,  90, 105
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 200 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/abra.pic", 0, 1 ; sprite dimensions
	dw AbraPicFront, AbraPicBack

	db MINDREADER, DELIRIUM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLASH	,	ION_BEAM	,	SURPRISEPNCH	,	AURA_IMPACT	,	VANISH	,	SHADOW_CLONE	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE																									
	; end

	db 0 ; padding
