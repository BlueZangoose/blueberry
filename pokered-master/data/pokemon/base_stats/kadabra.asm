	db DEX_KADABRA ; pokedex id

	db  40,  35,  30, 105, 120
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 145 ; base exp

	INCBIN "gfx/pokemon/front/kadabra.pic", 0, 1 ; sprite dimensions
	dw KadabraPicFront, KadabraPicBack

	db MINDREADER, DELIRIUM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	ION_BEAM	,	SURPRISEPNCH	,	AURA_IMPACT	,	VANISH	,	SHADOW_CLONE	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE																																																		
	; end


	db 0 ; padding
