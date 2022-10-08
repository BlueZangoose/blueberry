MoveEffectPointerTable:
; entries correspond to *_EFFECT constants
	table_width 2, MoveEffectPointerTable
	dw SleepEffect               	; EFFECT_01
	dw PoisonEffect              	; POISON_SIDE_EFFECT1
	dw DrainHPEffect             	; DRAIN_HP_EFFECT
;	dw FreezeBurnParalyzeEffect  	; BURN_SIDE_EFFECT1
;	dw FreezeBurnParalyzeEffect  	; FREEZE_SIDE_EFFECT
;	dw FreezeBurnParalyzeEffect  	; PARALYZE_SIDE_EFFECT1
	dw ExplodeEffect             	; EXPLODE_EFFECT
	dw DrainHPEffect             	; DREAM_EATER_EFFECT
	dw NULL                      	; MIRROR_MOVE_EFFECT
	dw StatModifierUpEffect      	; ATTACK_UP1_EFFECT
	dw StatModifierUpEffect      	; DEFENSE_UP1_EFFECT
	dw StatModifierUpEffect      	; SPEED_UP1_EFFECT
	dw StatModifierUpEffect      	; SPECIAL_UP1_EFFECT
	dw StatModifierUpEffect      	; ACCURACY_UP1_EFFECT
	dw StatModifierUpEffect      	; EVASION_UP1_EFFECT
	dw PayDayEffect              	; PAY_DAY_EFFECT
	dw NULL                      	; SWIFT_EFFECT
	dw StatModifierDownEffect    	; ATTACK_DOWN1_EFFECT
	dw StatModifierDownEffect    	; DEFENSE_DOWN1_EFFECT
	dw StatModifierDownEffect    	; SPEED_DOWN1_EFFECT
	dw StatModifierDownEffect    	; SPECIAL_DOWN1_EFFECT
	dw StatModifierDownEffect    	; ACCURACY_DOWN1_EFFECT
	dw StatModifierDownEffect    	; EVASION_DOWN1_EFFECT
	dw ConversionEffect          	; CONVERSION_EFFECT
	dw HazeEffect                	; HAZE_EFFECT
	dw BideEffect                	; BIDE_EFFECT
	dw ThrashPetalDanceEffect    	; THRASH_PETAL_DANCE_EFFECT
	dw SwitchAndTeleportEffect   	; SWITCH_AND_TELEPORT_EFFECT
	dw TwoToFiveAttacksEffect    	; TWO_TO_FIVE_ATTACKS_EFFECT
	dw TwoToFiveAttacksEffect    	; EFFECT_1E
	dw FlinchSideEffect          	; FLINCH_SIDE_EFFECT1
	dw SleepEffect               	; SLEEP_EFFECT
	dw PoisonEffect              	; POISON_SIDE_EFFECT2
;	dw FreezeBurnParalyzeEffect  	; BURN_SIDE_EFFECT2
;	dw FreezeBurnParalyzeEffect  	; unused effect
;	dw FreezeBurnParalyzeEffect  	; PARALYZE_SIDE_EFFECT2
	dw FlinchSideEffect          	; FLINCH_SIDE_EFFECT2
	dw OneHitKOEffect            	; OHKO_EFFECT
	dw ChargeEffect              	; CHARGE_EFFECT
	dw NULL                      	; SUPER_FANG_EFFECT
	dw NULL                      	; SPECIAL_DAMAGE_EFFECT
	dw TrappingEffect            	; TRAPPING_EFFECT
	dw ChargeEffect              	; FLY_EFFECT
	dw TwoToFiveAttacksEffect    	; ATTACK_TWICE_EFFECT
	dw NULL                      	; JUMP_KICK_EFFECT
	dw MistEffect                	; MIST_EFFECT
	dw FocusEnergyEffect         	; FOCUS_ENERGY_EFFECT
	dw RecoilEffect              	; RECOIL_EFFECT
	dw ConfusionEffect           	; CONFUSION_EFFECT
	dw StatModifierUpEffect      	; ATTACK_UP2_EFFECT
	dw StatModifierUpEffect      	; DEFENSE_UP2_EFFECT
	dw StatModifierUpEffect      	; SPEED_UP2_EFFECT
	dw StatModifierUpEffect      	; SPECIAL_UP2_EFFECT
	dw StatModifierUpEffect      	; ACCURACY_UP2_EFFECT
	dw StatModifierUpEffect      	; EVASION_UP2_EFFECT
	dw HealEffect                	; HEAL_EFFECT
	dw TransformEffect           	; TRANSFORM_EFFECT
	dw StatModifierDownEffect    	; ATTACK_DOWN2_EFFECT
	dw StatModifierDownEffect    	; DEFENSE_DOWN2_EFFECT
	dw StatModifierDownEffect    	; SPEED_DOWN2_EFFECT
	dw StatModifierDownEffect    	; SPECIAL_DOWN2_EFFECT
	dw StatModifierDownEffect    	; ACCURACY_DOWN2_EFFECT
	dw StatModifierDownEffect    	; EVASION_DOWN2_EFFECT
	dw ReflectLightScreenEffect  	; LIGHT_SCREEN_EFFECT
	dw ReflectLightScreenEffect  	; REFLECT_EFFECT
	dw PoisonEffect              	; POISON_EFFECT
	dw ParalyzeEffect            	; PARALYZE_EFFECT
	dw StatModifierDownEffect    	; ATTACK_DOWN_SIDE_EFFECT
	dw StatModifierDownEffect    	; DEFENSE_DOWN_SIDE_EFFECT
	dw StatModifierDownEffect    	; SPEED_DOWN_SIDE_EFFECT
	dw StatModifierDownEffect    	; SPECIAL_DOWN_SIDE_EFFECT
	dw StatModifierDownEffect    	; unused effect
	dw StatModifierDownEffect    	; unused effect
	dw StatModifierDownEffect    	; unused effect
	dw StatModifierDownEffect    	; unused effect
	dw ConfusionSideEffect       	; CONFUSION_SIDE_EFFECT
	dw TwoToFiveAttacksEffect    	; TWINEEDLE_EFFECT
	dw NULL                      	; unused effect
	dw SubstituteEffect          	; SUBSTITUTE_EFFECT
	dw HyperBeamEffect           	; HYPER_BEAM_EFFECT
	dw RageEffect                	; RAGE_EFFECT
	dw MimicEffect               	; MIMIC_EFFECT
	dw NULL                      	; METRONOME_EFFECT
	dw LeechSeedEffect           	; LEECH_SEED_EFFECT
	dw SplashEffect              	; SPLASH_EFFECT
	dw DisableEffect             	; DISABLE_EFFECT
	dw StatusSideEffect				; POISON_SIDE_EFFECT_25
	dw StatusSideEffect				; POISON_SIDE_EFFECT_40
	dw StatusSideEffect				; PARALYZE_SIDE_EFFECT_15
	dw StatusSideEffect				; PARALYZE_SIDE_EFFECT_25
	dw StatusSideEffect				; BURN_SIDE_EFFECT_10
	dw StatusSideEffect				; BURN_SIDE_EFFECT_18
	dw StatusSideEffect				; BURN_SIDE_EFFECT_30
	dw StatusSideEffect				; SLEEP_SIDE_EFFECT_8
	dw StatusSideEffect				; SLEEP_SIDE_EFFECT_14
	dw StatusSideEffect				; FREEZE_SIDE_EFFECT_6
	dw StatusSideEffect				; FREEZE_SIDE_EFFECT_11
	dw StatusSideEffect				; ACRID_SIDE_EFFECT
	dw StatusSideEffect				; MEGAVOLT_SIDE_EFFECT
	dw TypeChangeEffect				; CHANGE_USER_TYPE_EFFECT_GROUND
	dw TypeChangeEffect				; CHANGE_USER_TYPE_EFFECT_GRASS
	dw TypeChangeEffect				; CHANGE_TARGET_TYPE_EFFECT_FIRE
	dw FlinchSideEffect				; FLINCH_SIDE_EFFECT_10
	dw FlinchSideEffect				; FLINCH_SIDE_EFFECT_20
	dw FlinchSideEffect				; FLINCH_SIDE_EFFECT_30
	dw FlinchSideEffect				; FLINCH_SIDE_EFFECT_50
	dw FlinchEffect					; FLINCH_EFFECT
	dw BurnEffect					; BURN_EFFECT
	dw StatusCounterEffect			; BURN_COUNTEREFFECT
	dw StatusCounterEffect			; POISON_COUNTEREFFECT
	dw StatusCounterEffect			; PARALYZE_COUNTEREFFECT
	dw CureStatusEffect				; CURE_STATUS_EFFECT
	dw ModifierSideEffect			; ATK_DOWN_SIDE_EFFECT_10
	dw ModifierSideEffect			; DEF_DOWN_SIDE_EFFECT_10
	dw ModifierSideEffect			; SPD_DOWN_SIDE_EFFECT_10	
	dw ModifierSideEffect			; SPC_DOWN_SIDE_EFFECT_10
	dw ModifierSideEffect			; ACC_DOWN_SIDE_EFFECT_10
	dw ModifierSideEffect			; EVA_DOWN_SIDE_EFFECT_10
	dw ModifierSideEffect			; ATK_DOWN_SIDE_EFFECT_30	
	dw ModifierSideEffect			; DEF_DOWN_SIDE_EFFECT_30	
	dw ModifierSideEffect			; SPD_DOWN_SIDE_EFFECT_30		
	dw ModifierSideEffect			; SPC_DOWN_SIDE_EFFECT_30	
	dw ModifierSideEffect			; ACC_DOWN_SIDE_EFFECT_30	
	dw ModifierSideEffect			; EVA_DOWN_SIDE_EFFECT_30	
	dw ModifierSideEffect			; ATK_DOWN_SIDE_EFFECT_50	
	dw ModifierSideEffect			; DEF_DOWN_SIDE_EFFECT_50
	dw ModifierSideEffect			; SPD_DOWN_SIDE_EFFECT_50	
	dw ModifierSideEffect			; SPC_DOWN_SIDE_EFFECT_50	
	dw ModifierSideEffect			; ACC_DOWN_SIDE_EFFECT_50	
	dw ModifierSideEffect			; EVA_DOWN_SIDE_EFFECT_50	
	dw ModifierSideEffect			; ATK_DOWN_SIDE_EFFECT_100	
	dw ModifierSideEffect			; DEF_DOWN_SIDE_EFFECT_100	
	dw ModifierSideEffect			; SPD_DOWN_SIDE_EFFECT_100	
	dw ModifierSideEffect			; SPC_DOWN_SIDE_EFFECT_100
	dw ModifierSideEffect			; ACC_DOWN_SIDE_EFFECT_100
	dw ModifierSideEffect			; EVA_DOWN_SIDE_EFFECT_100
	dw ChargeEffect					; CHARGE_PARALYZE_EFFECT
	dw ChargeEffect					; CHARGE_BOOST_EFFECT
	dw StatusSideEffect				; POISON_SIDE_EFFECT_100
	dw StatusSideEffect				; PARALYZE_SIDE_EFFECT_100
	dw StatusSideEffect				; BURN_SIDE_EFFECT_100
	dw BoostSideEffect				; ATK_UP_SIDE_EFFECT_50
	dw BoostSideEffect				; DEF_UP_SIDE_EFFECT_20
	assert_table_length NUM_MOVE_EFFECTS
