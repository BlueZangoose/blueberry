	db DEX_ELECTRODE ; pokedex id

	db  60,  50,  70, 140,  80
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrode.pic", 0, 1 ; sprite dimensions
	dw ElectrodePicFront, ElectrodePicBack

	db ION_BEAM, AIR_COOLING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm		FLASH	,	LIGHTNING	,	ION_BEAM	,	EMBERSKIN	,	CHLOROBURST	,	ICE_BOULDER	,	BOULDER_SLAM																																																														
	; end

	db 0 ; padding
