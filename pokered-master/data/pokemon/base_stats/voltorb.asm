	db DEX_VOLTORB ; pokedex id

	db  40,  30,  50, 100,  55
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp

	INCBIN "gfx/pokemon/front/voltorb.pic", 0, 1 ; sprite dimensions
	dw VoltorbPicFront, VoltorbPicBack

	db ION_BEAM, AIR_COOLING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	ION_BEAM	,	EMBERSKIN	,	CHLOROBURST	,	ICE_BOULDER	,	BOULDER_SLAM
	; end

	db 0 ; padding
