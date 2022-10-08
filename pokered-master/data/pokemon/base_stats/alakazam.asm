	db DEX_ALAKAZAM ; pokedex id

	db  55,  50,  45, 120, 135
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/alakazam.pic", 0, 1 ; sprite dimensions
	dw AlakazamPicFront, AlakazamPicBack

	db MINDREADER, DELIRIUM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	ION_BEAM	,	SURPRISEPNCH	,	AURA_IMPACT	,	VANISH	,	SHADOW_CLONE	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE
	; end

	db 0 ; padding
