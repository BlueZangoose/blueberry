; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemPrices (see data/items/prices.asm)
; - TechnicalMachinePrices (see data/items/tm_prices.asm)
; - KeyItemFlags (see data/items/key_items.asm)
; - ItemUsePtrTable (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM       ; $00
	const MASTER_BALL   ; $01
	const ULTRA_BALL    ; $02
	const GREAT_BALL    ; $03
	const POKE_BALL     ; $04
	const TOWN_MAP      ; $05
	const BICYCLE       ; $06
	const SURFBOARD     ; $07 buggy?
	const SAFARI_BALL   ; $08
	const POKEDEX       ; $09
	const MOON_STONE    ; $0A
	const ANTIDOTE      ; $0B
	const BURN_HEAL     ; $0C
	const ICE_HEAL      ; $0D
	const AWAKENING     ; $0E
	const PARLYZ_HEAL   ; $0F
	const FULL_RESTORE  ; $10
	const MAX_POTION    ; $11
	const HYPER_POTION  ; $12
	const SUPER_POTION  ; $13
	const POTION        ; $14
	const BOULDERBADGE  ; $15
	const CASCADEBADGE  ; $16
SAFARI_BAIT EQU $15 ; overload
SAFARI_ROCK EQU $16 ; overload
	const THUNDERBADGE  ; $17
	const RAINBOWBADGE  ; $18
	const SOULBADGE     ; $19
	const MARSHBADGE    ; $1A
	const VOLCANOBADGE  ; $1B
	const EARTHBADGE    ; $1C
	const ESCAPE_ROPE   ; $1D
	const REPEL         ; $1E
	const OLD_AMBER     ; $1F
	const FIRE_STONE    ; $20
	const THUNDER_STONE ; $21
	const WATER_STONE   ; $22
	const HP_UP         ; $23
	const PROTEIN       ; $24
	const IRON          ; $25
	const CARBOS        ; $26
	const CALCIUM       ; $27
	const RARE_CANDY    ; $28
	const DOME_FOSSIL   ; $29
	const HELIX_FOSSIL  ; $2A
	const SECRET_KEY    ; $2B
	const TRADE_STONE   ; $2C "?????"		; was UNUSED_ITEM
	const BIKE_VOUCHER  ; $2D
	const X_ACCURACY    ; $2E
	const LEAF_STONE    ; $2F
	const CARD_KEY      ; $30
	const NUGGET        ; $31
	const PP_UP_2       ; $32
	const POKE_DOLL     ; $33
	const FULL_HEAL     ; $34
	const REVIVE        ; $35
	const MAX_REVIVE    ; $36
	const GUARD_SPEC    ; $37
	const SUPER_REPEL   ; $38
	const MAX_REPEL     ; $39
	const DIRE_HIT      ; $3A
	const COIN          ; $3B
	const FRESH_WATER   ; $3C
	const SODA_POP      ; $3D
	const LEMONADE      ; $3E
	const S_S_TICKET    ; $3F
	const GOLD_TEETH    ; $40
	const X_ATTACK      ; $41
	const X_DEFEND      ; $42
	const X_SPEED       ; $43
	const X_SPECIAL     ; $44
	const COIN_CASE     ; $45
	const OAKS_PARCEL   ; $46
	const ITEMFINDER    ; $47
	const SILPH_SCOPE   ; $48
	const POKE_FLUTE    ; $49
	const LIFT_KEY      ; $4A
	const EXP_ALL       ; $4B
	const OLD_ROD       ; $4C
	const GOOD_ROD      ; $4D
	const SUPER_ROD     ; $4E
	const PP_UP         ; $4F
	const ETHER         ; $50
	const MAX_ETHER     ; $51
	const ELIXER        ; $52
	const MAX_ELIXER    ; $53
NUM_ITEMS EQU const_value - 1

; elevator floors use item IDs
	const FLOOR_B2F     ; $54
	const FLOOR_B1F     ; $55
	const FLOOR_1F      ; $56
	const FLOOR_2F      ; $57
	const FLOOR_3F      ; $58
	const FLOOR_4F      ; $59
	const FLOOR_5F      ; $5A
	const FLOOR_6F      ; $5B
	const FLOOR_7F      ; $5C
	const FLOOR_8F      ; $5D
	const FLOOR_9F      ; $5E
	const FLOOR_10F     ; $5F
	const FLOOR_11F     ; $60
	const FLOOR_B4F     ; $61
NUM_FLOORS EQU const_value - 1 - NUM_ITEMS

	const_next $C4

; HMs are defined before TMs, so the actual number of TM definitions
; is not yet available. The TM quantity is hard-coded here and must
; match the actual number below.
NUM_TMS EQU 47

__tmhm_value__ = NUM_TMS + 1

add_tmnum: MACRO
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ += 1
ENDM

add_hm: MACRO
; Defines three constants:
; - HM_\1: the item id, starting at $C4
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
HM_VALUE = __tmhm_value__ - NUM_TMS
HM{02d:HM_VALUE}_MOVE EQU \1
	add_tmnum \1
ENDM

HM01 EQU const_value
	add_hm	CUT			;	$C4
	add_hm	FLY			;	$C5
	add_hm	SURF		;	$C6
	add_hm	STRENGTH	;	$C7
	add_hm	FLASH		;	$C8
	add_hm	DIG			;	$C9
	add_hm	TELEPORT	;	$CA
	add_hm	SOFTBOILED	;	$CB
NUM_HMS EQU const_value - HM01

__tmhm_value__ = 1

add_tm: MACRO
; Defines three constants:
; - TM_\1: the item id, starting at $C9
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
TM{02d:__tmhm_value__}_MOVE EQU \1
	add_tmnum \1
ENDM

TM01 EQU const_value
	add_tm		MANTIS_SLASH
	add_tm		LENS_SHIFT
	add_tm		LEECH_BITE
	add_tm		WYRMTAIL
	add_tm		LIGHTNING
	add_tm		ION_BEAM
	add_tm		STATIC_FLUFF
	add_tm		SURPRISEPNCH
	add_tm		PRACTICEPNCH
	add_tm		AURA_IMPACT
	add_tm		LANCE_CHARGE
	add_tm		LAVA_GEYSER
	add_tm		FLAMETAIL
	add_tm		EMBERSKIN
	add_tm		STARFIRE
	add_tm		WING_STRIKE
	add_tm		HEADWIND
	add_tm		DROPKICK
	add_tm		VANISH
	add_tm		OMEN_SCREAM
	add_tm		TERRIFY
	add_tm		SHADOW_CLONE
	add_tm		CHLOROBURST
	add_tm		LEAF_CAMO
	add_tm		SUPERSAP
	add_tm		LEAF_TRAP
	add_tm		SAND_BOMB
	add_tm		SAND_ARMOR
	add_tm		BURROW
	add_tm		ICE_BOULDER
	add_tm		MOONFROST
	add_tm		CHILLTAIL
	add_tm		FALLING_STAR
	add_tm		CRUSH
	add_tm		RAISEHACKLES
	add_tm		BLACK_GAS
	add_tm		ACID_SPIT
	add_tm		HEMOSAP
	add_tm		SLIME_COAT
	add_tm		PSIONIC_SLAM
	add_tm		CLEAR_MIND
	add_tm		DAZZLE
	add_tm		SEISMIC_ROCK
	add_tm		STONETAIL
	add_tm		BOULDER_SLAM
	add_tm		PRESSURE_CUT
	add_tm		HYDROTAIL
;	add_tm	DRUMBEAK		;	$C9
;	add_tm	RAZOR_WIND		;	$CA
;	add_tm	MANTIS_STYLE	;	$CB	;	changed,	was	swords	dance
;	add_tm	WHIRLWIND		;	$CC
;	add_tm	WILDFIRE		;	$CD	;	changed,	was	mega	kick
;	add_tm	RED_MOLD		;	$CE	;	changed,	was	toxic
;	add_tm	KO_KICK			;	$CF	;	changed,	was	horn	drill
;	add_tm	ACRID_WATER		;	$D0	;	changed,	was	body	slam
;	add_tm	LEAF_CAMO		;	$D1	;	changed,	was	take	down
;	add_tm	SCALE_SLAM		;	$D2	;	changed,	was	double	edge
;	add_tm	FLAMETAIL		;	$D3	;	changed,	was	bubblebeam
;	add_tm	SLICE			;	$D4	;	changed,	was	water	gun
;	add_tm	ELECTROSHOCK	;	$D5	;	changed,	was	ice	beam
;	add_tm	ION_BEAM		;	$D6	;	changed,	was	blizzard
;	add_tm	DRAGON_BLAST	;	$D7	;	changed,	was	hyper	beam
;	add_tm	COIN_TRICK		;	$D8	;	changed,	was	pay	day
;	add_tm	CRUSH			;	$D9	;	changed,	was	submission
;	add_tm	CLOSECIRCUIT	;	$DA	;	changed,	was	counter
;	add_tm	SEISMIC_ROCK	;	$DB	;	changed,	was	seismic	toss
;	add_tm	RAGE			;	$DC
;	add_tm	HYPERSAP		;	$DD	;	changed,	was	mega	drain
;	add_tm	CHARGE_POUCH	;	$DE	;	changed,	was	solarbeam
;	add_tm	DRAGON_RAGE		;	$DF
;	add_tm	MEGAVOLT		;	$E0	;	changed,	was	thunderbolt
;	add_tm	PRACTICEPNCH	;	$E1	;	changed,	was	thunder
;	add_tm	TREMOR			;	$E2	;	changed,	was	earthquake
;	add_tm	FISSURE			;	$E3
;;	add_tm	ICE_TUNNEL		;	$E4	;	moved	to	HMs	list,	was	dig
;	add_tm	FALLING_STAR	;	$E5	;	changed,	was	psychic
;;	add_tm	IGNITE			;	$E6	;	moved	to	HMs	list,	was	softboiled	or	teleport
;	add_tm	MIMIC			;	$E7
;	add_tm	BLADEMASTERY	;	$E8	;	changed,	was	double	team
;	add_tm	MOON_VEIL		;	$E9	;	changed,	was	reflect
;	add_tm	BIDE			;	$EA
;	add_tm	MONKEYAROUND	;	$EB	;	changed,	was	metronome
;	add_tm	DETONATE		;	$EC	;	changed,	was	selfdestruct
;	add_tm	GHOSTFIRE		;	$ED	;	changed,	was	egg	bomb
;	add_tm	AIR_COOLING		;	$EE	;	changed,	was	fire	blast
;	add_tm	AURA_IMPACT		;	$EF	;	changed,	was	swift
;	add_tm	SKULL_BASH		;	$F0
;;	add_tm	INJECT			;	$F1	;	moved	to	HMs	list,	was	softboiled	or	teleport
;	add_tm	HEMOSAP			;	$F2	;	changed,	was	dream	eater
;	add_tm	SKY_ATTACK		;	$F3
;	add_tm	BURY_ROOTS		;	$F4	;	changed,	was	rest
;	add_tm	POISONPOLLEN	;	$F5	;	changed,	was	thunder	wave
;	add_tm	PSYWAVE			;	$F6
;	add_tm	OVERLOAD		;	$F7	;	changed,	was	explosion
;	add_tm	STONE_FIST		;	$F8	;	changed,	was	rock	slide
;	add_tm	BONE_STRIKE		;	$F9	;	changed,	was	tri	attack
;	add_tm	SHADOW_CLONE	;	$FA	;	changed,	was	substitute
ASSERT NUM_TMS == const_value - TM01, "NUM_TMS ({d:NUM_TMS}) does not match the number of add_tm definitions"

NUM_TM_HM EQU NUM_TMS + NUM_HMS

; 50 TMs + 5 HMs = 55 learnable TM/HM flags per Pokémon.
; These fit in 7 bytes, with one unused bit left over.
__tmhm_value__ = NUM_TM_HM + 1
UNUSED_TMNUM EQU __tmhm_value__
