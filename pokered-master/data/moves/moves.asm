move: MACRO
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH, Moves
	move	LEAF_CHOMP,			NO_ADDITIONAL_EFFECT,			25,		BUG,			100,	30	;	changed,	was	pound
	move	TALON_ATTACK,		NO_ADDITIONAL_EFFECT,			25,		FLYING,			100,	20	;	changed,	was	karate	chop
	move	BLADE_STRIKE,		TWO_TO_FIVE_ATTACKS_EFFECT,		30,		FIGHTING,		100,	10	;	changed,	was	doubleslap
	move	LAVA_GEYSER,		TWO_TO_FIVE_ATTACKS_EFFECT,		40,		FIRE,			100,	5	;	changed,	was	comet	punch
	move	DRUMBEAK,			TWO_TO_FIVE_ATTACKS_EFFECT,		25,		FLYING,			95,		10	;	changed,	was	mega	punch
	move	COIN_TRICK,			PAY_DAY_EFFECT,					20,		PSYCHIC_TYPE,	100,	35	;	changed,	was	pay	day
	move	FLAMEBITE,			BURN_SIDE_EFFECT_18,			60,		FIRE,			95,		15	;	changed,	was	fire	punch
	move	ICED_WATER,			FREEZE_SIDE_EFFECT_6,			45,		ICE,			100,	20	;	changed,	was	ice	punch
	move	ARC_SPARK,			PARALYZE_SIDE_EFFECT_15,		30,		ELECTRIC,		100,	25	;	changed,	was	thunderpunch
	move	ECHO_SONG,			TWO_TO_FIVE_ATTACKS_EFFECT,		12,		NORMAL,			100,	25	;	changed,	was	scratch
	move	SUPERSAP,			DRAIN_HP_EFFECT,				55,		GRASS,			95,		15	;	changed,	was	vicegrip
	move	SHELL_SMACK,		NO_ADDITIONAL_EFFECT,			65,		NORMAL,			95,		15	;	changed,	was	guillotine
;	move	RAZOR_WIND,			CHARGE_EFFECT,					80,		NORMAL,			75,		10	;	REMOVED
	move	MANTIS_STYLE,		ATTACK_UP2_EFFECT,				0,		BUG,			100,	5	;	changed,	was	swords	dance
	move	CUT,				NO_ADDITIONAL_EFFECT,			50,		BUG,			100,	20	;	changed,	was	cut
	move	MUD_BULLETS,		TWO_TO_FIVE_ATTACKS_EFFECT,		10,		GROUND,			100,	25	;	changed,	was	gust
	move	PIERCE_STING,		NO_ADDITIONAL_EFFECT,			40,		BUG,			95,		25	;	changed,	was	wing	attack
;	move	WHIRLWIND,			SWITCH_AND_TELEPORT_EFFECT,		0,		NORMAL,			85,		20	;	REMOVED
	move	VANISH,				FLY_EFFECT,						75,		GHOST,			95,		15	;	changed,	was	fly
	move	EARTH_TRAP,			TRAPPING_EFFECT,				20,		GROUND,			65,		10	;	changed,	was	bind
	move	MAGMA_BREATH,		BURN_SIDE_EFFECT_18,			120,	FIRE,			77,		5	;	changed,	was	slam
	move	ACID_SPIT,			BURN_SIDE_EFFECT_10,			60,		POISON,			95,		15	;	changed,	was	vine	whip
	move	JOLT,				FLINCH_SIDE_EFFECT_10,			45,		ELECTRIC,		100,	20	;	changed,	was	stomp
	move	EARTH_SPIKES,		ATTACK_TWICE_EFFECT,			20,		GROUND,			100,	30	;	changed,	was	double	kick
	move	WILDFIRE,			BURN_SIDE_EFFECT_10,			70,		FIRE,			90,		15	;	changed,	was	mega	kick
;	move	JUMP_KICK,			JUMP_KICK_EFFECT,				70,		FIGHTING,		95,		25	;	REMOVED
	move	OMEN_SCREAM,		FLINCH_SIDE_EFFECT_10,			95,		GHOST,			90,		10	;	changed,	was	rolling	kick
	move	DOUSE,				SPEED_DOWN2_EFFECT,				0,		WATER,			100,	20	;	changed,	was	sand	attack
	move	PSYSQUEEZE,			FLINCH_SIDE_EFFECT_10,			55,		PSYCHIC_TYPE,	100,	25	;	changed,	was	headbutt
	move	STINGINGHAIR,		NO_ADDITIONAL_EFFECT,			45,		BUG,			100,	20	;	changed,	was	horn	attack
	move	TANTRUM,			TWO_TO_FIVE_ATTACKS_EFFECT,		30,		DRAGON,			90,		10	;	changed,	was	fury	attack
	move	KO_KICK,			OHKO_EFFECT,					1,		FIGHTING,		30,		5	;	changed,	was	horn	drill
	move	SCORCH,				BURN_SIDE_EFFECT_10,			40,		FIRE,			100,	20	;	changed,	was	tackle
	move	ACRID_WATER,		ACRID_SIDE_EFFECT,				65,		WATER,			100,	15	;	changed,	was	body	slam
	move	GRIND,				CHANGE_USER_TYPE_EFFECT_GROUND,	0,		ROCK,			100,	20	;	changed,	was	wrap
	move	LEAF_CAMO,			CHANGE_USER_TYPE_EFFECT_GRASS,	0,		GRASS,			100,	20	;	changed,	was	take	down
	move	IGNITE,				CHANGE_TARGET_TYPE_EFFECT_FIRE,	0,		FIRE,			100,	20	;	changed,	was	thrash
	move	SCALE_SLAM,			RECOIL_EFFECT,					115,	DRAGON,			95,		10	;	changed,	was	double	edge
	move	PUPPY_EYES,			DEFENSE_DOWN1_EFFECT,			0,		NORMAL,			100,	30	;	changed,	was	tail	whip
;	move	POISON_STING,		POISON_SIDE_EFFECT1,			15,		POISON,			100,	35	;	REMOVED
	move	CURRENT_FLOW,		TWO_TO_FIVE_ATTACKS_EFFECT,		25,		ELECTRIC,		95,		15	;	changed,	was	twineedle
	move	MULTIKICK,			TWO_TO_FIVE_ATTACKS_EFFECT,		18,		FIGHTING,		95,		20	;	changed,	was	pin	missile
	move	FROSTBITE,			ATTACK_DOWN2_EFFECT,			0,		ICE,			100,	10	;	changed,	was	leer
	move	VENOMBITE,			POISON_SIDE_EFFECT_40,			70,		POISON,			100,	10	;	changed,	was	bite
	move	CUTE_BARK,			ATTACK_DOWN1_EFFECT,			0,		NORMAL,			100,	30	;	changed,	was	growl
;	move	ROAR,				SWITCH_AND_TELEPORT_EFFECT,		0,		NORMAL,			100,	20	;	REMOVED
	move	GEM_MISSILE,		DEF_UP_SIDE_EFFECT_20,			65,		ROCK,			100,	15	;	changed,	was	sing
	move	POSSESSION,			CONFUSION_EFFECT,				0,		GHOST,			90,		10	;	changed,	was	supersonic
;	move	SONICBOOM,			SPECIAL_DAMAGE_EFFECT,			1,		NORMAL,			90,		20	;	REMOVED
	move	SAD_SONG,			DISABLE_EFFECT,					0,		NORMAL,			100,	10	;	changed,	was	disable
	move	STONETAIL,			DEF_DOWN_SIDE_EFFECT_30,		75,		ROCK,			95,		15	;	changed,	was	acid
	move	PSYCHIC_SONG,		SLEEP_SIDE_EFFECT_14,			95,		PSYCHIC_TYPE,	95,		5	;	changed,	was	ember
	move	SLEEPERHOLD,		SLEEP_SIDE_EFFECT_8,			75,		FIGHTING,		95,		10	;	changed,	was	flamethrower
	move	DUSTBATH,			MIST_EFFECT,					0,		GROUND,			100,	20	;	changed,	was	mist
	move	SLICE,				NO_ADDITIONAL_EFFECT,			70,		BUG,			100,	10	;	changed,	was	water	gun
	move	JAB,				NO_ADDITIONAL_EFFECT,			45,		FIGHTING,		100,	20	;	changed,	was	hydro	pump
	move	SURF,				NO_ADDITIONAL_EFFECT,			50,		WATER,			100,	20	;	changed,	was	surf
	move	ELECTROSHOCK,		CHARGE_PARALYZE_EFFECT,			75,		ELECTRIC,		90,		5	;	changed,	was	ice	beam
	move	ION_BEAM,			CHARGE_PARALYZE_EFFECT,			95,		ELECTRIC,		100,	15	;	changed,	was	blizzard
	move	PSIONIC_SLAM,		CONFUSION_SIDE_EFFECT,			75,		PSYCHIC_TYPE,	100,	10	;	changed,	was	psybeam
	move	FLAMETAIL,			ATK_DOWN_SIDE_EFFECT_30,		75,		FIRE,			95,		15	;	changed,	was	bubblebeam
	move	WINDCHILL,			ATK_DOWN_SIDE_EFFECT_30,		50,		ICE,			100,	20	;	changed,	was	aurora	beam
	move	DRAGON_BLAST,		HYPER_BEAM_EFFECT,				150,	DRAGON,			90,		5	;	changed,	was	hyper	beam
	move	STARFIRE,			NO_ADDITIONAL_EFFECT,			90,		FIRE,			100,	10	;	changed,	was	peck
	move	LANCE_CHARGE,		NO_ADDITIONAL_EFFECT,			122,	FIGHTING,		80,		5	;	changed,	was	drill	peck
	move	CRUSH,				NO_ADDITIONAL_EFFECT,			100,	NORMAL,			100,	10	;	changed,	was	submission
	move	ROCK_BULLET,		FLINCH_SIDE_EFFECT_10,			95,		ROCK,			80,		10	;	changed,	was	low	kick
	move	CLOSECIRCUIT,		NO_ADDITIONAL_EFFECT,			1,		ELECTRIC,		100,	20	;	changed,	was	counter
	move	SEISMIC_ROCK,		SPECIAL_DAMAGE_EFFECT,			1,		ROCK,			100,	20	;	changed,	was	seismic	toss
	move	STRENGTH,			NO_ADDITIONAL_EFFECT,			50,		ROCK,			100,	20	;	changed,	was	strength
	move	LEECH_BITE,			DRAIN_HP_EFFECT,				35,		BUG,			100,	20	;	changed,	was	absorb
	move	HYPERSAP,			DRAIN_HP_EFFECT,				75,		GRASS,			90,		10	;	changed,	was	mega	drain
	move	PARASITEROOT,		LEECH_SEED_EFFECT,				0,		GRASS,			95,		10	;	changed,	was	leech	seed
	move	BLAZE,				SPECIAL_UP1_EFFECT,				0,		FIRE,			100,	10	;	changed,	was	growth
	move	CLAW_SWIPE,			NO_ADDITIONAL_EFFECT,			40,		NORMAL,			100,	25	;	changed,	was	razor	leaf
	move	CHARGE_POUCH,		CHARGE_BOOST_EFFECT,			0,		ELECTRIC,		100,	10	;	changed,	was	solarbeam
	move	TOXIC_GAS,			POISON_EFFECT,					0,		POISON,			90,		20	;	changed,	was	poisonpowder
	move	PARASTING,			PARALYZE_EFFECT,				0,		POISON,			95,		20	;	changed,	was	stun	spore
	move	LULL,				SLEEP_EFFECT,					0,		PSYCHIC_TYPE,	50,		15	;	changed,	was	sleep	powder
	move	FIST_BARRAGE,		THRASH_PETAL_DANCE_EFFECT,		115,	FIGHTING,		95,		10	;	changed,	was	petal	dance
	move	MIGHTY_ROAR,		SPEED_DOWN1_EFFECT,				0,		NORMAL,			100,	30	;	changed,	was	string	shot
;	move	DRAGON_RAGE,		SPECIAL_DAMAGE_EFFECT,			1,		DRAGON,			100,	10	;	REMOVED
	move	TANGLEVINE,			TRAPPING_EFFECT,				20,		GRASS,			65,		15	;	changed,	was	fire	spin
	move	INJECT,				POISON_SIDE_EFFECT_25,			35,		POISON,			100,	20	;	changed,	was	thundershock
	move	MEGAVOLT,			MEGAVOLT_SIDE_EFFECT,			120,	ELECTRIC,		90,		5	;	changed,	was	thunderbolt
	move	POISONPOLLEN,		POISON_EFFECT,					0,		GRASS,			80,		20	;	changed,	was	thunder	wave
	move	PRACTICEPNCH,		ATK_UP_SIDE_EFFECT_50,			30,		FIGHTING,		100,	25	;	changed,	was	thunder
	move	LEAF_TRAP,			DRAIN_HP_EFFECT,				100,	GRASS,			85,		5	;	changed,	was	rock	throw
	move	TREMOR,				NO_ADDITIONAL_EFFECT,			80,		GROUND,			100,	10	;	changed,	was	earthquake
;	move	FISSURE,			OHKO_EFFECT,					1,		GROUND,			30,		5	;	REMOVED
	move	ICE_TUNNEL,			CHARGE_EFFECT,					85,		ICE,			95,		15	;	changed,	was	dig
	move	RED_MOLD,			POISON_EFFECT,					0,		GRASS,			85,		10	;	changed,	was	toxic
	move	DELIRIUM,			CONFUSION_SIDE_EFFECT,			10,		PSYCHIC_TYPE,	100,	20	;	changed,	was	confusion
	move	FALLING_STAR,		SPC_DOWN_SIDE_EFFECT_10,		90,		NORMAL,			90,		10	;	changed,	was	psychic
	move	WATER_CANNON,		SPD_DOWN_SIDE_EFFECT_30,		105,	WATER,			80,		5	;	changed,	was	hypnosis
	move	WARMUP,				ATTACK_UP1_EFFECT,				0,		FIGHTING,		100,	30	;	changed,	was	meditate
	move	AMP_UP,				SPEED_UP2_EFFECT,				0,		ELECTRIC,		100,	25	;	changed,	was	agility
;	move	QUICK_ATTACK,		NO_ADDITIONAL_EFFECT,			40,		NORMAL,			100,	30	;	REMOVED
;	move	RAGE,				RAGE_EFFECT,					20,		NORMAL,			100,	20	;	REMOVED
	move	TELEPORT,			NO_ADDITIONAL_EFFECT,			50,		PSYCHIC_TYPE,	100,	20	;	changed,	was	teleport
;	move	NIGHT_SHADE,		SPECIAL_DAMAGE_EFFECT,			0,		GHOST,			100,	15	;	REMOVED
;	move	MIMIC,				MIMIC_EFFECT,					0,		NORMAL,			100,	10	;	REMOVED
	move	VILE_STENCH,		DEFENSE_DOWN2_EFFECT,			0,		POISON,			100,	10	;	changed,	was	screech
	move	BLADEMASTERY,		ACCURACY_UP2_EFFECT,			0,		FIGHTING,		100,	15	;	changed,	was	double	team
	move	REGENERATE,			HEAL_EFFECT,					0,		WATER,			100,	5	;	changed,	was	recover
	move	SAND_ARMOR,			DEFENSE_UP1_EFFECT,				0,		GROUND,			100,	15	;	changed,	was	harden
	move	EAGLE_EYE,			ACCURACY_UP1_EFFECT,			0,		FLYING,			100,	20	;	changed,	was	minimize
	move	ROLL_OVER,			ACCURACY_DOWN1_EFFECT,			0,		NORMAL,			100,	20	;	changed,	was	smokescreen
	move	SPORE_SPRAY,		CONFUSION_EFFECT,				0,		GRASS,			100,	10	;	changed,	was	confuse	ray
	move	VORTEX,				NO_ADDITIONAL_EFFECT,			1,		FLYING,			100,	20	;	changed,	was	withdraw
	move	POLLEN_ARMOR,		DEFENSE_UP1_EFFECT,				0,		GRASS,			100,	30	;	changed,	was	defense	curl
	move	STONE_SHELL,		DEFENSE_UP2_EFFECT,				0,		ROCK,			100,	15	;	changed,	was	barrier
	move	PSYSHIELD,			LIGHT_SCREEN_EFFECT,			0,		PSYCHIC_TYPE,	100,	10	;	changed,	was	light	screen
	move	BRAIN_DRAIN,		HAZE_EFFECT,					0,		PSYCHIC_TYPE,	100,	10	;	changed,	was	haze
	move	MOON_VEIL,			REFLECT_EFFECT,					0,		NORMAL,			100,	5	;	changed,	was	reflect
	move	FOSSIL_ZEAL,		FOCUS_ENERGY_EFFECT,			0,		GHOST,			100,	10	;	changed,	was	focus	energy
;	move	BIDE,				BIDE_EFFECT,					0,		NORMAL,			100,	10	;	REMOVED
	move	MONKEYAROUND,		METRONOME_EFFECT,				0,		NORMAL,			100,	40	;	changed,	was	metronome
	move	MINDREADER,			MIRROR_MOVE_EFFECT,				0,		PSYCHIC_TYPE,	100,	20	;	changed,	was	mirror	move
	move	DETONATE,			EXPLODE_EFFECT,					130,	FIRE,			100,	5	;	changed,	was	selfdestruct
	move	GHOSTFIRE,			NO_ADDITIONAL_EFFECT,			45,		GHOST,			100,	25	;	changed,	was	egg	bomb
	move	EAT_POISON,			CURE_STATUS_EFFECT,				0,		POISON,			100,	15	;	changed,	was	lick
	move	COLDPRESENCE,		FREEZE_SIDE_EFFECT_6,			65,		ICE,			95,		15	;	changed,	was	smog
	move	BUCK,				PARALYZE_SIDE_EFFECT_25,		55,		NORMAL,			100,	15	;	changed,	was	sludge
	move	SHRIEK,				FLINCH_SIDE_EFFECT_20,			40,		GHOST,			100,	20	;	changed,	was	bone	club
	move	AIR_COOLING,		FREEZE_SIDE_EFFECT_11,			25,		ICE,			100,	25	;	changed,	was	fire	blast
	move	DROPKICK,			NO_ADDITIONAL_EFFECT,			55,		FLYING,			100,	15	;	changed,	was	waterfall
	move	BURNING_TAR,		TRAPPING_EFFECT,				40,		FIRE,			65,		10	;	changed,	was	clamp
	move	AURA_IMPACT,		SWIFT_EFFECT,					50,		FIGHTING,		100,	15	;	changed,	was	swift
;	move	SKULL_BASH,			CHARGE_EFFECT,					100,	NORMAL,			100,	15	;	REMOVED
	move	GRASS_BLADES,		TWO_TO_FIVE_ATTACKS_EFFECT,		13,		GRASS,			95,		20	;	changed,	was	spike	cannon
	move	PSYBLAST,			ATK_DOWN_SIDE_EFFECT_10,		100,	PSYCHIC_TYPE,	95,		10	;	changed,	was	constrict
	move	FOCUS,				SPECIAL_UP2_EFFECT,				0,		DRAGON,			100,	15	;	changed,	was	amnesia
	move	HAUNT,				ACCURACY_DOWN2_EFFECT,			0,		GHOST,			100,	5	;	changed,	was	kinesis
	move	SOFTBOILED,			NO_ADDITIONAL_EFFECT,			50,		NORMAL,			100,	20	;	changed,	was	softboiled
;	move	HI_JUMP_KICK,		JUMP_KICK_EFFECT,				85,		FIGHTING,		90,		20	;	REMOVED
	move	CRABWALK,			CURE_STATUS_EFFECT,				0,		WATER,			100,	15	;	changed,	was	glare
	move	HEMOSAP,			DREAM_EATER_EFFECT,				95,		POISON,			85,		15	;	changed,	was	dream	eater
	move	BLACK_GAS,			BURN_SIDE_EFFECT_30,			65,		POISON,			100,	15	;	changed,	was	poison	gas
	move	MULTISLAP,			TWO_TO_FIVE_ATTACKS_EFFECT,		15,		NORMAL,			100,	20	;	changed,	was	barrage
	move	SAP,				DRAIN_HP_EFFECT,				35,		GRASS,			100,	25	;	changed,	was	leech	life
	move	SLEEPING_GAS,		SLEEP_EFFECT,					0,		POISON,			50,		10	;	changed,	was	lovely	kiss
;	move	SKY_ATTACK,			CHARGE_EFFECT,					140,	FLYING,			90,		5	;	REMOVED
	move	TRANSFORM,			TRANSFORM_EFFECT,				0,		NORMAL,			100,	10	;	no	change
	move	MOONFROST,			ATK_DOWN_SIDE_EFFECT_10,		90,		ICE,			100,	10	;	changed,	was	bubble
	move	SPOOKYENERGY,		NO_ADDITIONAL_EFFECT,			52,		GHOST,			100,	25	;	changed,	was	dizzy	punch
	move	SHROOM_TOXIN,		SLEEP_EFFECT,					0,		POISON,			100,	10	;	changed,	was	spore
	move	FLASH,				NO_ADDITIONAL_EFFECT,			50,		ELECTRIC,		100,	20	;	changed,	was	flash
;	move	PSYWAVE,			SPECIAL_DAMAGE_EFFECT,			1,		PSYCHIC_TYPE,	80,		15	;	REMOVED
	move	JUMPSCARE,			SWIFT_EFFECT,					50,		GHOST,			100,	20	;	changed,	was	splash
	move	LENS_SHIFT,			ACCURACY_UP1_EFFECT,			0,		BUG,			100,	15	;	changed,	was	acid	armor
	move	ICE_SPIKE,			NO_ADDITIONAL_EFFECT,			80,		ICE,			100,	10	;	changed,	was	crabhammer
	move	OVERLOAD,			EXPLODE_EFFECT,					170,	ELECTRIC,		100,	5	;	changed,	was	explosion
	move	GRAVELSHOWER,		TWO_TO_FIVE_ATTACKS_EFFECT,		20,		ROCK,			90,		15	;	changed,	was	fury	swipes
	move	FIN_SLAP,			ATTACK_TWICE_EFFECT,			30,		WATER,			95,		20	;	changed,	was	bonemerang
	move	BURY_ROOTS,			HEAL_EFFECT,					0,		GROUND,			100,	10	;	changed,	was	rest
	move	STONE_FIST,			NO_ADDITIONAL_EFFECT,			55,		ROCK,			90,		25	;	changed,	was	rock	slide
	move	RAPIDS_RUSH,		FLINCH_SIDE_EFFECT_10,			80,		WATER,			90,		10	;	changed,	was	hyper	fang
	move	RAISEHACKLES,		ATTACK_UP1_EFFECT,				0,		NORMAL,			100,	15	;	changed,	was	sharpen
	move	DASH_ATTACK,		NO_ADDITIONAL_EFFECT,			45,		NORMAL,			95,		15	;	changed,	was	conversion
	move	BONE_STRIKE,		NO_ADDITIONAL_EFFECT,			80,		GHOST,			100,	10	;	changed,	was	tri	attack
	move	PRESSURE_CUT,		SUPER_FANG_EFFECT,				1,		WATER,			100,	20	;	changed,	was	super	fang
	move	PEBBLESTRIKE,		NO_ADDITIONAL_EFFECT,			45,		ROCK,			95,		20	;	changed,	was	slash
	move	SHADOW_CLONE,		SUBSTITUTE_EFFECT,				0,		GHOST,			100,	10	;	changed,	was	substitute
	move	STRUGGLE,			RECOIL_EFFECT,					50,		TYPELESS,		100,	10	;	changed	to	typeless	type
	move	DRAGONFIRE,			NO_ADDITIONAL_EFFECT,			60,		DRAGON,			90,		10	;	new,	high	crit
	move	WINK,				FLINCH_EFFECT,					0,		PSYCHIC_TYPE,	75,		15	;	new
	move	JAW_SNAP,			FLINCH_SIDE_EFFECT_20,			20,		NORMAL,			100,	20	;	new
	move	HYPER_BITE,			FLINCH_SIDE_EFFECT_20,			75,		NORMAL,			95,		15	;	new
	move	DAZZLE,				FLINCH_SIDE_EFFECT_30,			60,		PSYCHIC_TYPE,	100,	10	;	new
	move	DISARM,				FLINCH_SIDE_EFFECT_50,			60,		FIGHTING,		85,		15	;	new
	move	SEED_SHOT,			NO_ADDITIONAL_EFFECT,			40,		GRASS,			100,	25	;	new
	move	SLING_STONE,		NO_ADDITIONAL_EFFECT,			65,		ROCK,			100,	25	;	new,	low	prio
	move	ROCKFALL,			NO_ADDITIONAL_EFFECT,			110,	ROCK,			100,	5	;	new,	low	prio
	move	BOULDER_SLAM,		NO_ADDITIONAL_EFFECT,			75,		ROCK,			95,		10	;	new,	low	prio
	move	SWIFT_SLASH,		NO_ADDITIONAL_EFFECT,			45,		BUG,			90,		15	;	new,	high	prio
	move	SURPRISEPNCH,		NO_ADDITIONAL_EFFECT,			40,		FIGHTING,		100,	15	;	new,	high	prio
	move	ZEPHYR,				NO_ADDITIONAL_EFFECT,			30,		FLYING,			100,	20	;	new,	high	prio
	move	AIR_SCYTHE,			NO_ADDITIONAL_EFFECT,			60,		FLYING,			100,	5	;	new,	high	prio
	move	BOULDER_ROLL,		NO_ADDITIONAL_EFFECT,			70,		ROCK,			80,		10	;	new,	high	prio
	move	WATERJET,			NO_ADDITIONAL_EFFECT,			40,		WATER,			95,		15	;	new,	high	prio
	move	MANTIS_SLASH,		NO_ADDITIONAL_EFFECT,			50,		BUG,			85,		10	;	new,	high	prio,			high	crit
	move	WING_STRIKE,		RECOIL_EFFECT,					90,		FLYING,			100,	10	;	new,	high	prio,			50%	recoil
	move	ICE_BOULDER,		RECOIL_EFFECT,					125,	ICE,			100,	10	;	new,	50%	recoil
	move	DIVEBOMB,			RECOIL_EFFECT,					105,	FLYING,			90,		10	;	new
	move	BEAK_FRENZY,		THRASH_PETAL_DANCE_EFFECT,		115,	FLYING,			95,		10	;	new
	move	FLY,				NO_ADDITIONAL_EFFECT,			50,		FLYING,			100,	25	;	new
	move	CLEAR_MIND,			SPECIAL_UP1_EFFECT,				0,		PSYCHIC_TYPE,	100,	20	;	new
	move	HEADWIND,			SPEED_UP1_EFFECT,				0,		FLYING,			100,	25	;	new
	move	FLOW,				SPEED_UP1_EFFECT,				0,		WATER,			100,	20	;	new
	move	ACID_SPINES,		BURN_EFFECT,					0,		POISON,			60,		10	;	new
	move	DIG,				NO_ADDITIONAL_EFFECT,			50,		GROUND,			100,	25	;	new
	move	LIGHTNING,			HYPER_BEAM_EFFECT,				135,	ELECTRIC,		90,		5	;	new
	move	PURSUE,				EVASION_DOWN1_EFFECT,			0,		NORMAL,			100,	35	;	new
	move	POSTURE,			SPECIAL_DOWN1_EFFECT,			0,		NORMAL,			100,	20	;	new
	move	TERRIFY,			SPECIAL_DOWN2_EFFECT,			0,		GHOST,			100,	10	;	new
	move	NECTAR_DRINK,		HEAL_EFFECT,					0,		BUG,			100,	5	;	new
	move	BURROW,				HEAL_EFFECT,					0,		GROUND,			100,	10	;	new
	move	FORGET,				DISABLE_EFFECT,					0,		PSYCHIC_TYPE,	90,		20	;	new
	move	CHLOROBURST,		EXPLODE_EFFECT,					130,	GRASS,			100,	5	;	new
	move	EMBERSKIN,			BURN_COUNTEREFFECT,				40,		FIRE,			100,	10	;	new
	move	STATIC_FLUFF,		PARALYZE_COUNTEREFFECT,			40,		ELECTRIC,		100,	10	;	new
	move	SLIME_COAT,			POISON_COUNTEREFFECT,			40,		POISON,			100,	10	;	new
	move	SHED_SKIN,			CURE_STATUS_EFFECT,				0,		BUG,			100,	20	;	new
	move	SANDBLAST,			ACC_DOWN_SIDE_EFFECT_10,		105,	GROUND,			82,		10	;	new
	move	CHILLTAIL,			EVA_DOWN_SIDE_EFFECT_30,		75,		ICE,			95,		15	;	new
	move	CORRODE,			DEF_DOWN_SIDE_EFFECT_30,		50,		POISON,			95,		20	;	new
	move	WYRMTAIL,			SPC_DOWN_SIDE_EFFECT_30,		75,		DRAGON,			95,		15	;	new
	move	TAR_SLAP,			SPD_DOWN_SIDE_EFFECT_30,		55,		POISON,			90,		20	;	new
	move	FOAM_SPRAY,			SPD_DOWN_SIDE_EFFECT_30,		30,		WATER,			100,	30	;	new
	move	HYDROTAIL,			SPD_DOWN_SIDE_EFFECT_30,		75,		WATER,			95,		15	;	new
	move	LANDSLIDE,			EVA_DOWN_SIDE_EFFECT_100,		125,	GROUND,			75,		5	;	new
	move	SUPERCOOL,			SPC_DOWN_SIDE_EFFECT_100,		115,	ICE,			70,		5	;	new
	move	MUDSLIDE,			SPD_DOWN_SIDE_EFFECT_100,		60,		GROUND,			80,		10	;	new
	move	ASH_ATTACK,			ACC_DOWN_SIDE_EFFECT_50,		15,		FIRE,			100,	25	;	new
	move	DUST_KICK,			ACC_DOWN_SIDE_EFFECT_50,		20,		GROUND,			100,	25	;	new
	move	SNOW_BREATH,		SPD_DOWN_SIDE_EFFECT_50,		55,		ICE,			95,		10	;	new
	move	SAND_BOMB,			SPD_DOWN_SIDE_EFFECT_50,		90,		GROUND,			90,		10	;	new
	assert_table_length NUM_ATTACKS
