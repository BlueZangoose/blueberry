CheatHouse_Object:
	db 0 ; border block

	def_warp_events
	warp_event  5, 11, LAST_MAP, 1
	warp_event  6, 11, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  2,  9, SPRITE_GENTLEMAN, STAY, RIGHT, 1 ; person
	object_event  0,  7, SPRITE_GAMBLER, STAY, RIGHT, 2 ; person
	object_event  8,  8, SPRITE_COOLTRAINER_F, STAY, LEFT, 3 ; person
	object_event  8,  9, SPRITE_BRUNETTE_GIRL, STAY, LEFT, 4 ; person
	object_event  6,  5, SPRITE_BRUNETTE_GIRL, STAY, DOWN, 5 ; person

	def_warps_to CHEAT_HOUSE
