anim_special_effect: MACRO
	db \1
	dw \2
ENDM

AnimationIdSpecialEffects:
	; animation id, effect routine address
;	anim_special_effect DRUMBEAK,              AnimationFlashScreen				; changed, was mega punch
;	anim_special_effect SHELL_SMACK,           AnimationFlashScreen				; changed, was guillotine
;	anim_special_effect WILDFIRE,              AnimationFlashScreen				; was mega kick
	anim_special_effect PSYSQUEEZE,            AnimationFlashScreen				; changed, was headbutt
;	anim_special_effect PUPPY_EYES,            TailWhipAnimationUnused			; changed, was tail whip
	anim_special_effect CUTE_BARK,             DoGrowlSpecialEffects			; changed, was growl
	anim_special_effect ECHO_SONG,             DoGrowlSpecialEffects			; new
;	anim_special_effect SAD_SONG,              AnimationFlashScreen				; changed, was disable
	anim_special_effect ION_BEAM,              DoBlizzardSpecialEffects			; changed, was blizzard. KEPT for Ion Beam.
;	anim_special_effect FLAMETAIL,             AnimationFlashScreen				; changed, was bubblebeam
	anim_special_effect DRAGON_BLAST,          FlashScreenEveryFourFrameBlocks	; changed, was hyper beam
	anim_special_effect MEGAVOLT,              FlashScreenEveryEightFrameBlocks	; changed, was thunderbolt
;	anim_special_effect MOON_VEIL,             AnimationFlashScreen				; changed, was reflect
	anim_special_effect DETONATE,              DoExplodeSpecialEffects			; changed, was selfdestruct. Hides mon at the end of the animation maybe.
;	anim_special_effect SHROOM_TOXIN,          AnimationFlashScreen				; changed, was spore
	anim_special_effect OVERLOAD,              DoExplodeSpecialEffects			; changed, was explosion
	anim_special_effect CHLOROBURST,           DoExplodeSpecialEffects			; changed, was explosion
	anim_special_effect STONE_FIST,            DoStoneFistSpecialEffects		; changed, was rock slide
	anim_special_effect TRADE_BALL_DROP_ANIM,  TradeHidePokemon
	anim_special_effect TRADE_BALL_SHAKE_ANIM, TradeShakePokeball
	anim_special_effect TRADE_BALL_TILT_ANIM,  TradeJumpPokeball
	anim_special_effect TOSS_ANIM,             DoBallTossSpecialEffects
	anim_special_effect SHAKE_ANIM,            DoBallShakeSpecialEffects
	anim_special_effect POOF_ANIM,             DoPoofSpecialEffects
	anim_special_effect GREATTOSS_ANIM,        DoBallTossSpecialEffects
	anim_special_effect ULTRATOSS_ANIM,        DoBallTossSpecialEffects
	db -1 ; end
