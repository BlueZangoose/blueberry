Route1_Object:
	db $b ; border block

	def_warp_events
	warp_event 11, 13, CHEAT_HOUSE, 1

	def_bg_events
	bg_event  9, 27, 3 ; Route1Text3
	bg_event 11, 17, 4 ; Route1Text4

	def_object_events
	object_event  5, 24, SPRITE_YOUNGSTER, WALK, UP_DOWN, 1 ; person
	object_event 15, 13, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, 2 ; person

	def_warps_to ROUTE_1

	; unused
	warp_to 2, 7, 4
