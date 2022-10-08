MoveSoundTable:
	table_width 3, MoveSoundTable
	; ID, pitch mod, tempo mod
	db SFX_LEAF_CHOMP,         $00, $80 ; LEAF_CHOMP		;, was pound
	db SFX_BATTLE_0C,          $10, $80 ; TALON_ATTACK		;, was karate chop
	db SFX_BLADE_STRIKE,       $00, $80 ; BLADE_STRIKE		;, was doubleslap
	db SFX_BATTLE_0B,          $01, $80 ; LAVA_GEYSER		;, was comet punch
	db SFX_BATTLE_0D,          $00, $40 ; DRUMBEAK			;, was mega punch
	db SFX_SILPH_SCOPE,        $00, $ff ; COIN_TRICK		; changed, was pay day
	db SFX_BATTLE_0D,          $10, $60 ; FLAMEBITE			; was firepunch
	db SFX_BATTLE_0D,          $20, $80 ; ICED_WATER		; changed, was ice punch
	db SFX_BATTLE_0D,          $00, $a0 ; ARC_SPARK			; changed, was thunderpunch
	db SFX_DAMAGE,             $00, $80 ; ECHO_SONG			;, was scratch
	db SFX_BATTLE_0F,          $20, $40 ; SUPERSAP			;, was vicegrip
	db SFX_BATTLE_0F,          $00, $80 ; SHELL_SMACK	; changed, was guillotine
	db SFX_BATTLE_0E,          $00, $a0 ; RAZOR_WIND
	db SFX_NOT_VERY_EFFECTIVE, $10, $c0 ; MANTIS_STYLE	; changed, was swords dance
	db SFX_NOT_VERY_EFFECTIVE, $00, $a0 ; CUT
	db SFX_BATTLE_12,          $00, $c0 ; MUD_BULLETS
	db SFX_BATTLE_12,          $10, $a0 ; PIERCE_STING		; changed, was wing attack
	db SFX_BATTLE_13,          $00, $e0 ; WHIRLWIND
	db SFX_NOT_VERY_EFFECTIVE, $20, $c0 ; VANISH	; changed, was fly
	db SFX_BATTLE_14,          $00, $80 ; EARTH_TRAP	; changed, was bind
	db SFX_BATTLE_22,          $00, $80 ; MAGMA_BREATH; was slam
	db SFX_ACID_SPIT,          $01, $80 ; ACID_SPIT; was vine whip
	db SFX_BATTLE_20,          $00, $80 ; JOLT	; changed, was stomp
	db SFX_BATTLE_17,          $f0, $40 ; EARTH_SPIKES, was doublekick
	db SFX_SUPER_EFFECTIVE,    $00, $80 ; WILDFIRE; was mega kick
	db SFX_BATTLE_17,          $00, $80 ; JUMP_KICK
	db SFX_BATTLE_21,          $10, $80 ; OMEN_SCREAM	; changed, was rolling kick
	db SFX_BATTLE_1B,          $01, $a0 ; DOUSE	; changed, was sand attack
	db SFX_BATTLE_18,          $00, $80 ; PSYSQUEEZE	; changed, was headbutt
	db SFX_BATTLE_1E,          $00, $60 ; STINGINGHAIR	; changed, was horn attack
	db SFX_BATTLE_1E,          $01, $40 ; TANTRUM, was fury attack
	db SFX_KO_KICK,         $00, $a0 ; KO_KICK	; changed, was horn drill
	db SFX_SUPER_EFFECTIVE,    $10, $a0 ; SCORCH, was tackle
	db SFX_BATTLE_20,          $00, $c0 ; ACRID_WATER	; was body slam
	db SFX_BATTLE_14,          $10, $60 ; GRIND	; changed, was wrap
	db SFX_SUPER_EFFECTIVE,    $00, $a0 ; LEAF_CAMO	; take down
	db SFX_BATTLE_22,          $11, $c0 ; IGNITE	; WAS THRASH
	db SFX_SUPER_EFFECTIVE,    $20, $c0 ; SCALE_SLAM	; changed, was double edge
	db SFX_BATTLE_21,          $00, $80 ; PUPPY_EYES	; changed, was tail whip
	db SFX_BATTLE_1B,          $00, $80 ; POISON_STING
	db SFX_BATTLE_1B,          $20, $c0 ; CURRENT_FLOW, was twineedle
	db SFX_BATTLE_19,          $00, $80 ; MULTIKICK
	db SFX_BATTLE_31,          $ff, $40 ; FROSTBITE	; changed, was leer
	db SFX_BATTLE_1E,          $00, $80 ; VENOMBITE	; was bite
	db SFX_BATTLE_0B,          $00, $c0 ; CUTE_BARK	; changed, was growl
	db SFX_BATTLE_0B,          $00, $40 ; ROAR
	db SFX_BATTLE_35,          $00, $80 ; GEM_MISSILE	;	changed,	was	sing
	db SFX_BATTLE_27,          $40, $60 ; POSSESSION	; changed, was supersonic
	db SFX_BATTLE_27,          $00, $80 ; SONICBOOM
	db SFX_BATTLE_27,          $ff, $40 ; SAD_SONG	; changed, was disable
	db SFX_BATTLE_2A,          $80, $c0 ; STONETAIL	; changed, was acid
	db SFX_BATTLE_19,          $10, $a0 ; PSYCHIC_SONG	; was bite
	db SFX_BATTLE_19,          $21, $e0 ; SLEEPERHOLD	; was flamethrower
	db SFX_BATTLE_29,          $00, $80 ; DUSTBATH	; changed, was mist
	db SFX_BATTLE_24,          $20, $60 ; SLICE	; changed, was water gun
	db SFX_BATTLE_2A,          $00, $80 ; JAB	; changed, was hydro pump
	db SFX_BATTLE_2C,          $00, $80 ; SURF
	db SFX_BATTLE_28,          $40, $80 ; ELECTROSHOCK	; changed, was ice beam
	db SFX_BATTLE_29,          $f0, $e0 ; ION_BEAM	; changed, was blizzard
	db SFX_PSIONIC_SLAM,       $00, $80 ; PSIONIC_SLAM	; changed, was psybeam
	db SFX_BATTLE_2A,          $f0, $60 ; FLAMETAIL	; changed, was bubblebeam
	db SFX_BATTLE_28,          $00, $80 ; WINDCHILL	; changed, was aurora beam
	db SFX_BATTLE_36,          $00, $80 ; DRAGON_BLAST	; changed, was hyper beam
	db SFX_STARFIRE,           $01, $a0 ; STARFIRE	; changed, was peck
	db SFX_BATTLE_13,          $f0, $20 ; LANCE_CHARGE	; changed, was drill peck
	db SFX_BATTLE_23,          $01, $c0 ; CRUSH	; changed, was submission
	db SFX_BATTLE_23,          $00, $80 ; ROCK_BULLET	; changed, was low kick
	db SFX_SUPER_EFFECTIVE,    $00, $e0 ; CLOSECIRCUIT	; changed, was counter
	db SFX_BATTLE_26,          $01, $60 ; SEISMIC_ROCK	; changed, was seismic toss
	db SFX_BATTLE_26,          $20, $40 ; STRENGTH
	db SFX_BATTLE_24,          $00, $80 ; LEECH_BITE, was absorb
	db SFX_BATTLE_24,          $40, $c0 ; HYPERSAP, was mega drain
	db SFX_BATTLE_1B,          $03, $60 ; PARASITEROOT	; changed, was leech seed
	db SFX_BATTLE_25,          $11, $e0 ; BLAZE	; changed, was growth
	db SFX_BATTLE_12,          $20, $e0 ; CLAW_SWIPE	; changed, was razor leaf
	db SFX_BATTLE_2E,          $00, $80 ; CHARGE_POUCH	; changed, was solarbeam
	db SFX_BATTLE_1C,          $00, $80 ; TOXIC_GAS	; changed, was poisonpowder
	db SFX_BATTLE_1C,          $11, $a0 ; PARASTING	; changed, was stun spore
	db SFX_BATTLE_1C,          $01, $c0 ; LULL	; changed, was sleep powder
	db SFX_BATTLE_13,          $14, $c0 ; FIST_BARRAGE	; changed, was petal dance
	db SFX_BATTLE_1B,          $02, $a0 ; MIGHTY_ROAR	; changed, was string shot
	db SFX_BATTLE_29,          $f0, $80 ; DRAGON_RAGE
	db SFX_BATTLE_29,          $20, $c0 ; TANGLEVINE	; changed, was fire spin
	db SFX_BATTLE_2F,          $00, $20 ; INJECT	; changed, was thundershock
	db SFX_BATTLE_2F,          $20, $80 ; MEGAVOLT	; changed, was thunderbolt
	db SFX_BATTLE_2E,          $12, $60 ; POISONPOLLEN	; changed, was thunder wave
	db SFX_BATTLE_26,          $00, $80 ; PRACTICEPNCH	;	changed,	was	thunder
	db SFX_BATTLE_14,          $01, $e0 ; LEAF_TRAP, was rock throw
	db SFX_BATTLE_29,          $0f, $e0 ; TREMOR	; changed, was earthquake
	db SFX_BATTLE_29,          $11, $20 ; FISSURE
	db SFX_DAMAGE,             $10, $40 ; ICE_TUNNEL	; changed, was dig
	db SFX_BATTLE_0F,          $10, $c0 ; RED_MOLD	; changed, was toxic
	db SFX_BATTLE_14,          $00, $20 ; DELIRIUM	; changed, was confusion
	db SFX_FALLING_STAR,       $00, $80 ; FALLING_STAR	; changed, was psychic
	db SFX_BATTLE_35,          $11, $18 ; WATER_CANNON	;changed,	was	hypnosis
	db SFX_BATTLE_09,          $20, $c0 ; WARMUP	; changed, was meditate
	db SFX_FAINT_FALL,         $20, $c0 ; AMP_UP	; changed, was agility
	db SFX_BATTLE_25,          $00, $10 ; QUICK_ATTACK
	db SFX_BATTLE_26,          $f0, $20 ; RAGE
	db SFX_BATTLE_33,          $f0, $c0 ; TELEPORT
	db SFX_NOT_VERY_EFFECTIVE, $f0, $e0 ; NIGHT_SHADE
	db SFX_BATTLE_09,          $f0, $40 ; MIMIC
	db SFX_BATTLE_31,          $00, $80 ; VILE_STENCH	; changed, was screech
	db SFX_BATTLE_33,          $80, $40 ; BLADEMASTERY	; changed, was double team
	db SFX_BATTLE_33,          $00, $80 ; REGENERATE	; changed, was recover
	db SFX_BATTLE_14,          $11, $20 ; SAND_ARMOR	; changed, was harden
	db SFX_BATTLE_14,          $22, $10 ; EAGLE_EYE	; changed, was minimize
	db SFX_BATTLE_1B,          $f1, $ff ; ROLL_OVER	; changed, was smokescreen
	db SFX_BATTLE_13,          $f1, $ff ; SPORE_SPRAY	; changed, was confuse ray
	db SFX_BATTLE_14,          $33, $30 ; VORTEX	; changed, was withdraw
	db SFX_BATTLE_32,          $40, $c0 ; POLLEN_ARMOR	; changed, was defense curl
	db SFX_BATTLE_0E,          $20, $20 ; STONE_SHELL	; changed, was barrier
	db SFX_BATTLE_0E,          $f0, $10 ; PSYSHIELD	; changed, was light screen
	db SFX_BATTLE_0F,          $f8, $10 ; BRAIN_DRAIN	; changed, was haze
	db SFX_NOT_VERY_EFFECTIVE, $f0, $10 ; MOON_VEIL	; changed, was reflect
	db SFX_BATTLE_25,          $00, $80 ; FOSSIL_ZEAL	; changed, was focus energy
	db SFX_BATTLE_18,          $00, $c0 ; BIDE
	db SFX_BATTLE_32,          $c0, $ff ; MONKEYAROUND	; changed, was metronome
	db SFX_BATTLE_09,          $f2, $20 ; MINDREADER	; changed, was mirror move
	db SFX_BATTLE_34,          $00, $80 ; DETONATE	; changed, was selfdestruct
	db SFX_BATTLE_34,          $00, $40 ; GHOSTFIRE	; changed, was egg bomb
	db SFX_BATTLE_09,          $00, $40 ; EAT_POISON	; changed, was lick
	db SFX_NOT_VERY_EFFECTIVE, $10, $ff ; COLDPRESENCE	; changed, was smog
	db SFX_BATTLE_2A,          $20, $20 ; BUCK	; changed, was sludge
	db SFX_BATTLE_32,          $00, $80 ; SHRIEK	; changed, was bone club
	db SFX_BATTLE_29,          $1f, $20 ; AIR_COOLING	; changed, was fire blast
	db SFX_BATTLE_25,          $2f, $80 ; DROPKICK	; changed, was waterfall
	db SFX_BATTLE_0F,          $1f, $ff ; BURNING_TAR	; changed, was clamp
	db SFX_BATTLE_2B,          $1f, $60 ; AURA_IMPACT	; changed, was swift
	db SFX_BATTLE_26,          $1e, $20 ; SKULL_BASH
	db SFX_BATTLE_26,          $1f, $18 ; GRASS_BLADES, was spike cannon
	db SFX_BATTLE_14,          $0f, $80 ; PSYBLAST	; changed, was constrict
	db SFX_BATTLE_09,          $f8, $10 ; FOCUS	; changed, was amnesia
	db SFX_FAINT_FALL,         $18, $20 ; HAUNT	; changed, was kinesis
	db SFX_BATTLE_32,          $08, $40 ; SOFTBOILED
	db SFX_BATTLE_17,          $01, $e0 ; HI_JUMP_KICK
	db SFX_NOT_VERY_EFFECTIVE, $09, $ff ; CRABWALK	; changed, was glare
	db SFX_BATTLE_35,          $42, $01 ; HEMOSAP, was dream eater
	db SFX_BATTLE_1C,          $00, $ff ; BLACK_GAS	; changed, was poison gas
	db SFX_BATTLE_32,          $08, $e0 ; MULTISLAP, was barrage
	db SFX_BATTLE_24,          $00, $80 ; SAP, was leech life
	db SFX_BATTLE_09,          $88, $10 ; SLEEPING_GAS	; changed, was lovely kiss
	db SFX_BATTLE_25,          $48, $ff ; SKY_ATTACK
	db SFX_FAINT_FALL,         $ff, $ff ; TRANSFORM
	db SFX_BATTLE_24,          $ff, $10 ; MOONFROST	; changed, was bubble
	db SFX_FAINT_FALL,         $ff, $04 ; SPOOKYENERGY	; changed, was dizzy punch
	db SFX_BATTLE_1C,          $01, $ff ; SHROOM_TOXIN	; changed, was spore
	db SFX_BATTLE_13,          $f8, $ff ; FLASH
	db SFX_BATTLE_0C,          $f0, $f0 ; PSYWAVE
	db SFX_BATTLE_0F,          $08, $10 ; JUMPSCARE	; changed, was splash
	db SFX_BATTLE_0D,          $f0, $ff ; LENS_SHIFT	; changed, was acid armor
	db SFX_SUPER_EFFECTIVE,    $f0, $ff ; ICE_SPIKE	; changed, was crabhammer
	db SFX_BATTLE_34,          $10, $ff ; OVERLOAD	; changed, was explosion
	db SFX_BATTLE_0E,          $f0, $20 ; GRAVELSHOWER, was fury swipes
	db SFX_BATTLE_2B,          $f0, $60 ; FIN_SLAP, was bonemerang
	db SFX_BATTLE_21,          $12, $10 ; BURY_ROOTS	; changed, was rest
	db SFX_BATTLE_36,          $f0, $20 ; STONE_FIST	; changed, was rock slide
	db SFX_BATTLE_1E,          $12, $ff ; RAPIDS_RUSH	; changed, was hyper fang
	db SFX_BATTLE_31,          $80, $04 ; RAISEHACKLES	; changed, was sharpen
	db SFX_BATTLE_33,          $f0, $10 ; DASH_ATTACK	; changed, was conversion
	db SFX_BATTLE_29,          $f8, $ff ; BONE_STRIKE	; changed, was tri attack
	db SFX_BATTLE_26,          $f0, $ff ; PRESSURE_CUT	; changed, was super fang
	db SFX_NOT_VERY_EFFECTIVE, $01, $ff ; PEBBLESTRIKE	; changed, was slash
	db SFX_BATTLE_2C,          $d8, $04 ; SHADOW_CLONE	; changed, was substitute
	db SFX_BATTLE_0B,          $00, $80 ; STRUGGLE
	db SFX_BATTLE_29,          $f0, $80 ; DRAGONFIRE
	db SFX_BATTLE_24,          $20, $60 ; WINK
	db SFX_BATTLE_1E,          $00, $80 ; JAW_SNAP
	db SFX_BATTLE_1E,          $00, $80 ; HYPER_BITE
	db SFX_BATTLE_1E,          $00, $80 ; DAZZLE
	db SFX_BATTLE_1E,          $00, $80 ; DISARM
	db SFX_BATTLE_1E,          $00, $80 ; SEED_SHOT
	db SFX_BATTLE_1E,          $00, $80 ; SLING_STONE
	db SFX_BATTLE_1E,          $00, $80 ; ROCKFALL
	db SFX_BATTLE_1E,          $00, $80 ; BOULDER_SLAM
	db SFX_BATTLE_1E,          $00, $80 ; SWIFT_SLASH
	db SFX_BATTLE_1E,          $00, $80 ; SURPRISEPNCH
	db SFX_BATTLE_1E,          $00, $80 ; ZEPHYR
	db SFX_BATTLE_1E,          $00, $80 ; AIR_SCYTHE
	db SFX_BATTLE_1E,          $00, $80 ; BOULDER_ROLL
	db SFX_BATTLE_1E,          $00, $80 ; WATERJET
	db SFX_BATTLE_1E,          $00, $80 ; MANTIS_SLASH
	db SFX_BATTLE_1E,          $00, $80 ; WING_STRIKE
	db SFX_BATTLE_1E,          $00, $80 ; ICE_BOULDER
	db SFX_BATTLE_1E,          $00, $80 ; DIVEBOMB
	db SFX_BATTLE_1E,          $00, $80 ; BEAK_FRENZY
	db SFX_BATTLE_1E,          $00, $80 ; FLY
	db SFX_BATTLE_1E,          $00, $80 ; CLEAR_MIND
	db SFX_BATTLE_1E,          $00, $80 ; HEADWIND
	db SFX_BATTLE_1E,          $00, $80 ; FLOW
	db SFX_BATTLE_1E,          $00, $80 ; ACID_SPINES
	db SFX_BATTLE_1E,          $00, $80 ; DIG
	db SFX_BATTLE_1E,          $00, $80 ; LIGHTNING
	db SFX_BATTLE_1E,          $00, $80 ; PURSUE
	db SFX_BATTLE_1E,          $00, $80 ; POSTURE
	db SFX_BATTLE_1E,          $00, $80 ; TERRIFY
	db SFX_BATTLE_1E,          $00, $80 ; NECTAR_DRINK
	db SFX_BATTLE_1E,          $00, $80 ; BURROW
	db SFX_BATTLE_1E,          $00, $80 ; FORGET
	db SFX_BATTLE_1E,          $00, $80 ; CHLOROBURST
	db SFX_BATTLE_1E,          $00, $80 ; EMBERSKIN
	db SFX_BATTLE_1E,          $00, $80 ; STATIC_FLUFF
	db SFX_BATTLE_1E,          $00, $80 ; SLIME_COAT
	db SFX_BATTLE_1E,          $00, $80 ; SHED_SKIN
	db SFX_BATTLE_1E,          $00, $80 ; SANDBLAST
	db SFX_BATTLE_1E,          $00, $80 ; CHILLTAIL
	db SFX_BATTLE_1E,          $00, $80 ; CORRODE
	db SFX_BATTLE_1E,          $00, $80 ; WYRMTAIL
	db SFX_BATTLE_1E,          $00, $80 ; TAR_SLAP
	db SFX_BATTLE_1E,          $00, $80 ; FOAM_SPRAY
	db SFX_BATTLE_1E,          $00, $80 ; HYDROTAIL
	db SFX_BATTLE_1E,          $00, $80 ; LANDSLIDE
	db SFX_BATTLE_1E,          $00, $80 ; SUPERCOOL
	db SFX_BATTLE_1E,          $00, $80 ; MUDSLIDE
	db SFX_BATTLE_1E,          $00, $80 ; ASH_ATTACK
	db SFX_BATTLE_1E,          $00, $80 ; DUST_KICK
	db SFX_BATTLE_1E,          $00, $80 ; SNOW_BREATH
	db SFX_BATTLE_1E,          $00, $80 ; SAND_BOMB
;	db SFX_BATTLE_1E,          $00, $80 ; WATER_CANNON
	assert_table_length NUM_ATTACKS
	db SFX_BATTLE_0B,          $00, $80
