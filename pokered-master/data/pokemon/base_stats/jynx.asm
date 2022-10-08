	db DEX_JYNX ; pokedex id

	db  65,  50,  35,  95,  95
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/jynx.pic", 0, 1 ; sprite dimensions
	dw JynxPicFront, JynxPicBack

	db SNOW_BREATH, LULL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		SURPRISEPNCH	,	OMEN_SCREAM	,	MOONFROST	,	PSIONIC_SLAM	,	TELEPORT	,	CLEAR_MIND	,	DAZZLE																																																		
	; end

	db 0 ; padding
