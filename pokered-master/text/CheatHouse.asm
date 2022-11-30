;~~~STAT XP TEXT
_CheatHouseStatXpText1::		;flag not set
	text "Stat XP gain is"
	line "ENABLED."
	para "Disable"
	line "stat XP gain?"
	done

_CheatHouseStatXpText2::		;flag set
	text "Stat XP gain is"
	line "DISABLED."
	para "Enable"
	line "stat XP gain?"
	done
	
_StatXpFlagSetText::
	text "Stat XP gain"
	line "disabled!"
	done
	
_StatXpFlagResetText::
	text "Stat XP gain"
	line "enabled!"
	done
	
_StatXpStayDisabledText::
	text "Stat XP gain was"
	line "left disabled."
	done
	
_StatXpStayEnabledText::
	text "Stat XP gain was"
	line "left enabled."
	done
;~~~LEVEL LIMIT TEXT
_CheatHouseLevelLimitText1::		;flag not set
	text "You can level up"
	line "to level 100, no"
	cont "problem, cutie!"
	para "Wanna turn on"
	line "level limits?"
	done

_CheatHouseLevelLimitText2::		;flag set
	text "Your levels are"
	line "limited by your"
	cont "BADGES, cutie!"
	para "Wanna turn off"
	line "level limits?"
	done
	
_LevelLimitFlagSetText::
	text "Now your"
	line "#MON's levels"
	cont "are limited!"
	para "Any #MON above"
	line "the limit will"
	cont "level down after"
	cont "a fight!"
	done
	
_LevelLimitFlagResetText::
	text "No more level"
	line "limits, darlin'!"
	done
	
_LevelLimitStayDisabledText::
	text "Oh, so strong!"
	line "Level limits stay"
	cont "on!"
	done
	
_LevelLimitStayEnabledText::
	text "Okay, cutie!"
	line "Level limits stay"
	cont "off!"
	done
;~~~BADGE BOOST TEXT
_CheatHouseBadgeBoostText1::		;flag not set
	text "Badge boosts"
	line "on."
	para "Turn off"
	line "badge boost?"
	done

_CheatHouseBadgeBoostText2::		;flag set
	text "Badge boosts"
	line "off."
	para "Turn on"
	line "badge boost?"
	done
	
_BadgeBoostFlagSetText::
	text "Badge boost"
	line "off."
	done
	
_BadgeBoostFlagResetText::
	text "Badge boost"
	line "on."
	done
	
_BadgeBoostStayDisabledText::
	text "Badge boost"
	line "left off."
	done
	
_BadgeBoostStayEnabledText::
	text "Badge boost"
	line "left on."
	done