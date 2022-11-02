; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - AttackAnimationPointers (see data/moves/animations.asm)
; - MoveSoundTable (see data/moves/sfx.asm)
	const_def
	const NO_MOVE			; 00
	const LEAF_CHOMP		; 01
	const TALON_ATTACK		; 02
	const BLADE_STRIKE		; 03
	const LAVA_GEYSER		; 04
	const DRUMBEAK			; 05
	const COIN_TRICK		; 06				; changed, was pay day
	const FLAMEBITE			; 07			; was firepunch
	const ICED_WATER		; 08				; changed, was ice punch
	const ARC_SPARK			; 09				; changed, was thunderpunch
	const ECHO_SONG			; 0a
	const SUPERSAP			; 0b, was vicegrip
	const SHELL_SMACK		; 0c				; changed, was guillotine
;	const RAZOR_WIND		; 0d				; REMOVED
	const MANTIS_STYLE		; 0e				; changed, was swords dance
	const CUT				; 0f
	const MUD_BULLETS		; 10
	const PIERCE_STING		; 11				; changed, was wing attack
;	const WHIRLWIND			; 12	;	REMOVED
	const VANISH			; 13				; changed, was fly
	const EARTH_TRAP		; 14				; changed, was bind
	const MAGMA_BREATH		; 15			; was slam
	const ACID_SPIT			; 16			; was vine whip
	const JOLT				; 17				; changed, was stomp
	const EARTH_SPIKES		; 18
	const WILDFIRE			; 19			; was mega kick
;	const JUMP_KICK			; 1a	;	REMOVED
	const OMEN_SCREAM		; 1b				; changed, was rolling kick
	const DOUSE				; 1c				; changed, was sand attack
	const PSYSQUEEZE		; 1d				; changed, was headbutt
	const STINGINGHAIR		; 1e				; changed, was horn attack
	const TANTRUM			; 1f
	const KO_KICK			; 20				; changed, was horn drill
	const SCORCH			; 21 was tackle
	const ACRID_WATER		; 22				; was body slam
	const GRIND				; 23				; changed, was wrap
	const LEAF_CAMO			; 24				; take down
	const IGNITE			; 25				; WAS THRASH
	const SCALE_SLAM		; 26				; changed, was double edge
	const PUPPY_EYES		; 27				; changed, was tail whip
;	const POISON_STING		; 28	;	REMOVED
	const CURRENT_FLOW		; 29
	const MULTIKICK			; 2a
	const FROSTBITE			; 2b				; changed, was leer
	const VENOMBITE			; 2c				; was bite
	const CUTE_BARK			; 2d				; changed, was growl
	const ROAR				; 2e
	const GEM_MISSILE		; 2f				;	changed,	was	sing
	const POSSESSION		; 30				; changed, was supersonic
	const SONICBOOM			; 31
	const SAD_SONG			; 32				; changed, was disable
	const STONETAIL			; 33				; changed, was acid
	const PSYCHIC_SONG		; 34				; was bite
	const SLEEPERHOLD		; 35				; was flamethrower
	const DUSTBATH			; 36				; changed, was mist
	const SLICE				; 37				; changed, was water gun
	const JAB				; 38				; changed, was hydro pump
	const SURF				; 39
	const ELECTROSHOCK		; 3a				; changed, was ice beam
	const ION_BEAM			; 3b				; changed, was blizzard
	const PSIONIC_SLAM		; 3c				; changed, was psybeam
	const FLAMETAIL			; 3d				; changed, was bubblebeam
	const WINDCHILL			; 3e				; changed, was aurora beam
	const DRAGON_BLAST		; 3f				; changed, was hyper beam
	const STARFIRE			; 40				; changed, was peck
	const LANCE_CHARGE		; 41				; changed, was drill peck
	const CRUSH				; 42				; changed, was submission
	const ROCK_BULLET		; 43				; changed, was low kick
	const CLOSECIRCUIT		; 44				; changed, was counter
	const SEISMIC_ROCK		; 45				; changed, was seismic toss
	const STRENGTH			; 46
	const LEECH_BITE		; 47, was absorb
	const HYPERSAP			; 48, was mega drain
	const PARASITEROOT		; 49				; changed, was leech seed
	const BLAZE				; 4a				; changed, was growth
	const CLAW_SWIPE		; 4b				; changed, was razor leaf
	const CHARGE_POUCH		; 4c				; changed, was solarbeam
	const TOXIC_GAS			; 4d				; changed, was poisonpowder
	const PARASTING			; 4e				; changed, was stun spore
	const LULL				; 4f				; changed, was sleep powder
	const FIST_BARRAGE		; 50				; changed, was petal dance
	const MIGHTY_ROAR		; 51				; changed, was string shot
	const DRAGON_RAGE		; 52
	const TANGLEVINE		; 53				; changed, was fire spin
	const INJECT			; 54				; changed, was thundershock
	const MEGAVOLT			; 55				; changed, was thunderbolt
	const POISONPOLLEN		; 56				; changed, was thunder wave
	const PRACTICEPNCH		; 57				;	changed,	was	thunder
	const LEAF_TRAP			; 58, was rock throw
	const TREMOR			; 59				; changed, was earthquake
	const FISSURE			; 5a
	const ICE_TUNNEL		; 5b				; changed, was dig
	const RED_MOLD			; 5c				; changed, was toxic
	const DELIRIUM			; 5d				; changed, was confusion
	const FALLING_STAR		; 5e				; changed, was psychic
	const WATER_CANNON		; 5f				;changed,	was	hypnosis
	const WARMUP			; 60				; changed, was meditate
	const AMP_UP			; 61				; changed, was agility
	const QUICK_ATTACK		; 62
	const RAGE				; 63
	const TELEPORT			; 64
	const NIGHT_SHADE		; 65
	const MIMIC				; 66
	const VILE_STENCH      	; 67				; changed, was screech
	const BLADEMASTERY  	; 68				; changed, was double team
	const REGENERATE      	; 69				; changed, was recover
	const SAND_ARMOR       	; 6a				; changed, was harden
	const EAGLE_EYE     	; 6b				; changed, was minimize
	const ROLL_OVER  		; 6c				; changed, was smokescreen
	const SPORE_SPRAY  		; 6d				; changed, was confuse ray
	const VORTEX     		; 6e				; changed, was withdraw
	const POLLEN_ARMOR 		; 6f				; changed, was defense curl
	const STONE_SHELL      	; 70				; changed, was barrier
	const PSYSHIELD 		; 71				; changed, was light screen
	const BRAIN_DRAIN		; 72				; changed, was haze
	const MOON_VEIL			; 73				; changed, was reflect
	const FOSSIL_ZEAL		; 74				; changed, was focus energy
	const BIDE				; 75
	const MONKEYAROUND		; 76				; changed, was metronome
	const MINDREADER		; 77				; changed, was mirror move
	const DETONATE			; 78				; changed, was selfdestruct
	const GHOSTFIRE			; 79				; changed, was egg bomb
	const EAT_POISON		; 7a				; changed, was lick
	const COLDPRESENCE		; 7b				; changed, was smog
	const BUCK				; 7c				; changed, was sludge
	const SHRIEK			; 7d				; changed, was bone club
	const AIR_COOLING		; 7e				; changed, was fire blast
	const DROPKICK			; 7f				; changed, was waterfall
	const BURNING_TAR		; 80				; changed, was clamp
	const AURA_IMPACT		; 81				; changed, was swift
	const SKULL_BASH		; 82
	const GRASS_BLADES		; 83
	const PSYBLAST			; 84				; changed, was constrict
	const FOCUS				; 85				; changed, was amnesia
	const HAUNT				; 86				; changed, was kinesis
	const SOFTBOILED		; 87
	const HI_JUMP_KICK		; 88
	const CRABWALK			; 89				; changed, was glare
	const HEMOSAP			; 8a, was dream eater
	const BLACK_GAS			; 8b				; changed, was poison gas
	const MULTISLAP			; 8c
	const SAP				; 8d, was leech life
	const SLEEPING_GAS		; 8e				; changed, was lovely kiss
	const SKY_ATTACK		; 8f
	const TRANSFORM			; 90
	const MOONFROST			; 91				; changed, was bubble
	const SPOOKYENERGY		; 92				; changed, was dizzy punch
	const SHROOM_TOXIN		; 93				; changed, was spore
	const FLASH				; 94
	const PSYWAVE			; 95
	const JUMPSCARE			; 96				; changed, was splash
	const LENS_SHIFT		; 97				; changed, was acid armor
	const ICE_SPIKE			; 98				; changed, was crabhammer
	const OVERLOAD			; 99				; changed, was explosion
	const GRAVELSHOWER		; 9a
	const FIN_SLAP			; 9b
	const BURY_ROOTS		; 9c				; changed, was rest
	const STONE_FIST		; 9d				; changed, was rock slide
	const RAPIDS_RUSH		; 9e				; changed, was hyper fang
	const RAISEHACKLES		; 9f				; changed, was sharpen
	const DASH_ATTACK		; a0				; changed, was conversion
	const BONE_STRIKE		; a1				; changed, was tri attack
	const PRESSURE_CUT		; a2				; changed, was super fang
	const PEBBLESTRIKE		; a3				; changed, was slash
	const SHADOW_CLONE		; a4				; changed, was substitute
	const STRUGGLE			; a5
	const DRAGONFIRE		; a6
	const WINK				; a7
	const JAW_SNAP			; a8
	const HYPER_BITE		; a9
	const DAZZLE			; aa
	const DISARM			; ab
	const SEED_SHOT			; ac
	const SLING_STONE		; ad
	const ROCKFALL			; ae
	const BOULDER_SLAM		; af
	const SWIFT_SLASH		; b0
	const SURPRISEPNCH		; b1
	const ZEPHYR			; b2
	const AIR_SCYTHE		; b3
	const BOULDER_ROLL		; b4
	const WATERJET			; b5
	const MANTIS_SLASH		; b6
	const WING_STRIKE		; b7
	const ICE_BOULDER		; b8
	const DIVEBOMB			; b9
	const BEAK_FRENZY		; ba
	const FLY				; bb
	const CLEAR_MIND		; bc
	const HEADWIND			; bd
	const FLOW				; be
	const ACID_SPINES		; bf
	const DIG				; c0
	const LIGHTNING			; c1
	const PURSUE			; c2
	const POSTURE			; c3
	const TERRIFY			; c4				; This move (and all moves onwards) will be bugged without the fix implemented in home/names2.asm
	const NECTAR_DRINK		; c5
	const BURROW			; c6
	const FORGET			; c7
	const CHLOROBURST		; c8
	const EMBERSKIN			; c9
	const STATIC_FLUFF		; ca
	const SLIME_COAT		; cb
	const SHED_SKIN			; cc
	const SANDBLAST			; cd
	const CHILLTAIL			; ce
	const CORRODE			; cf
	const WYRMTAIL			; d0
	const TAR_SLAP			; d1
	const FOAM_SPRAY		; d2
	const HYDROTAIL			; d3
	const LANDSLIDE			; d4
	const SUPERCOOL			; d5
	const MUDSLIDE			; d6
	const ASH_ATTACK		; d7
	const DUST_KICK			; d8
	const SNOW_BREATH		; d9
	const SAND_BOMB			; da
;	const WATER_CANNON		; db					; 219. This is the limit.
NUM_ATTACKS EQU const_value - 1

				; Moves do double duty as animation identifiers.

	const SHOWPIC_ANIM															; db					
	const STATUS_AFFECTED_ANIM													; dc
	const ANIM_A8																; dd
	const ANIM_A9																; de
	const TRADE_BALL_DROP_ANIM													; df
	const TRADE_BALL_SHAKE_ANIM													; e0
	const TRADE_BALL_TILT_ANIM													; e1
	const TRADE_BALL_POOF_ANIM													; e2
	const XSTATITEM_ANIM			; use X Attack/Defense/Speed/Special		; e3
	const ANIM_AF																; e4
	const ANIM_B0																; e5
	const ANIM_B1																; e6
	const ANIM_B2																; e7
	const ANIM_B3																; e8
	const ANIM_B4																; e9
	const ANIM_B5																; ea
	const ANIM_B6																; eb
	const ANIM_B7																; ec
	const ANIM_B8																; ed
	const ANIM_B9																; ee
	const BURN_PSN_ANIM		; Plays when a monster is burned or poisoned		; ef
	const ANIM_BB																; f0
	const ANIM_BC																; f1
	const SLP_ANIM			; sleeping monster									; f2
	const ANIM_BE																; f3
	const CONF_ANIM			; confused monster									; f4
	const ANIM_C0			; dig?												; f5
	const TOSS_ANIM			; toss Poké Ball									; f6
	const SHAKE_ANIM		; shaking Poké Ball when catching monster			; f7
	const POOF_ANIM			; puff of smoke										; f8
	const BLOCKBALL_ANIM	; trainer knocks away Poké Ball						; f9
	const GREATTOSS_ANIM	; toss Great Ball									; fa
	const ULTRATOSS_ANIM	; toss Ultra Ball or Master Ball					; fb
	const ANIM_C7																; fc
	const HIDEPIC_ANIM		; monster disappears								; fd
	const ROCK_ANIM			; throw rock										; fe
	const BAIT_ANIM			; throw bait										; ff

NUM_ATTACK_ANIMS EQU const_value - 1
