_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "Would you like to"
	line "SAVE the game?"
	done

_GameSavedText::
	text "<PLAYER> saved"
	line "the game!"
	done

_OlderFileWillBeErasedText::
	text "The older file"
	line "will be erased to"
	cont "save. Okay?"
	done

_WhenYouChangeBoxText::
	text "When you change a"
	line "#MON BOX, data"
	cont "will be saved."

	para "Is that okay?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<PKMN> BOX.@"
	text_end

_EvolvedText::
	text_ram wStringBuffer
	text " evolved"
	done

_IntoText::
	text_start
	line "into @"
	text_ram wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	text_ram wStringBuffer
	text_start
	line "stopped evolving!"
	prompt

_IsEvolvingText::
	text "What? @"
	text_ram wStringBuffer
	text_start
	line "is evolving!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "fell asleep!"
	prompt

_AlreadyAsleepText::
	text "<TARGET>'s"
	line "already asleep!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "was poisoned!"
	prompt

_BadlyPoisonedText::
	text "<TARGET>'s"
	line "badly poisoned!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "was burned!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "was frozen solid!"
	prompt

_FireDefrostedText::
	text "Fire defrosted"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer
	text "@"
	text_end

_GreatlyRoseText::
	text "<SCROLL>greatly@"
	text_end

_ThrobbinglyRoseText::				;new
	text "<SCROLL>immensely@"
	text_end

_RoseText::
	text " rose!"
	prompt

_MonsStatsFellText::
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer
	text "@"
	text_end

_GreatlyFellText::
	text "<SCROLL>greatly@"
	text_end

_FellText::
	text " fell!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "ran from battle!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "ran away scared!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "was blown away!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@"
	text_end

_MadeWhirlwindText::
	text_start
	line "made a whirlwind!"
	prompt

_TookInSunlightText::
	text_start
	line "is charging up!"
	prompt

_LoweredItsHeadText::
	text_start
	line "lowered its head!"
	prompt

_SkyAttackGlowingText::
	text_start
	line "is glowing!"
	prompt

_FlewUpHighText::
	text_start
	line "vanished...?!"
	prompt

_DugAHoleText::
	text_start
	line "dug a hole"
	cont "in the ice!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "became confused!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "learned"
	cont "@"
	text_ram wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	text "<TARGET>'s"
	line "@"
	text_ram wcd6d
	text " was"
	cont "disabled!"
	prompt

_NothingHappenedText::
	text "Nothing happened!"
	prompt

_NoEffectText::
	text "No effect!"
	prompt

_ButItFailedText::
	text "But, it failed! "
	prompt

_DidntAffectText::
	text "It didn't affect"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "is unaffected!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET>'s"
	line "paralyzed! It may"
	cont "not attack!"
	prompt
	
_AttackHalvedDueToBurnText::		; new
	text "<TARGET>'s"
	line "attack power is"
	cont "halved by a burn!"
	prompt	
	
_StatusCuredText::					; new
	text "<USER>'s"
	line "cured!"
	prompt

_SubstituteText::
	text "It created a"
	line "SUBSTITUTE!"
	prompt

_HasSubstituteText::
	text "<USER>"
	line "has a SUBSTITUTE!"
	prompt

_TooWeakSubstituteText::
	text "Too weak to make"
	line "a SUBSTITUTE!"
	prompt

_CoinsScatteredText::
	text "Coins scattered"
	line "everywhere!"
	prompt

_GettingPumpedText::
	text "<USER>'s"
	line "fervor exposes"
	cont "weak points!"
	prompt

_IsAlreadyPumpedText::
	text "<USER>'s"
	line "already zealous!"
	prompt

_WasSeededText::
	text "Roots dug into"
	line "<TARGET>!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "evaded attack!"
	prompt

_HitWithRecoilText::
	text "<USER>'s"
	line "hit with recoil!"
	prompt

_ConvertedTypeText::
	text "Converted type to"
	line "<TARGET>'s!"
	prompt

_StatusChangesEliminatedText::
	text "All STATUS changes"
	line "are eliminated!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "planted roots and"
	cont "started sleeping!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "planted roots and"
	cont "became healthy!"
	done

_RegainedHealthText::
	text "<USER>" 
	line "regained health!"
	prompt

_EatPoisonText::
	text "<USER> ate"
	line "the toxins!"
	prompt

_TransformedText::
	text "<USER>"
	line "transformed into"
	cont "@"
	text_ram wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER>'s"
	line "protected against"
	cont "special attacks!"
	prompt

_HasLightScreenUpText::
	text "<USER>"
	line "already has a"
	cont "PSYSHIELD!"
	prompt

_ReflectGainedArmorText::
	text "<USER>'s"
	line "protected against"
	cont "physical attacks!"
	prompt

_HasReflectUpText::
	text "<USER>'s"
	line "already protected"
	cont "by the moon!"
	prompt

_ShroudedInMistText::
	text "Dust protects"
	line "<USER>"
	cont "from stat moves!"
	prompt

_SuckedHealthText::
	text "Sucked health from"
	line "<TARGET>!"
	prompt

_DreamWasEatenText::
	text "<TARGET>'s"
	line "toxins drained"
	cont "health!"
	prompt
	
_NeedsToBePoisonedText::
	text "<TARGET>"
	line "isn't poisoned!"
	prompt
	
_TargetTypeChangedText::
	text "<TARGET>'s"
	line "type changed!"
	prompt	
	
_UserTypeChangedText::
	text "<USER>'s"
	line "type changed!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done
