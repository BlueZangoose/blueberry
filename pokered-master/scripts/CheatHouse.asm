CheatHouse_Script:
	jp EnableAutoTextBoxDrawing

CheatHouse_TextPointers:
	dw CheatHouseCashier1Text
	dw CheatHouseCashier2Text
	dw CheatHouseStatXpText
	dw CheatHouseLevelLimitText
	text_end
	
CheatHouseStatXpText:
	text_asm
	ld a, [wCheatFlags]		;flag 1 is the stat xp flag
	bit 1, a
	jr nz, .flagSet
;flag not set
	ld hl, CheatHouseStatXpText1
	jr .printHello
.flagSet
	ld hl, CheatHouseStatXpText2
	;fall through
.printHello
	call PrintText
	call YesNoChoice		; if yes, wCurrentMenuItem is 0. If no, 1
	ld a, [wCurrentMenuItem]
	and a
	ld a, [wCheatFlags]
	jr nz, .dontChangeFlag
;change stat xp flag
	bit 1, a
	jr z, .ifNotSet
;ifSet
	res 1, a
	ld hl, StatXpFlagResetText
	jr .saveNewFlag
.ifNotSet
	set 1, a
	ld hl, StatXpFlagSetText
	;fall through
.saveNewFlag
	ld [wCheatFlags], a
	call PrintText
	jp TextScriptEnd
.dontChangeFlag
	bit 1, a
	jr nz, .stayDisabled
;stayEnabled
	ld hl, StatXpStayEnabledText
	jr .printUnchangedFlag
.stayDisabled
	ld hl, StatXpStayDisabledText
.printUnchangedFlag
	call PrintText
	jp TextScriptEnd

CheatHouseStatXpText1:				;used if flag not set (cheat disabled)
	text_far _CheatHouseStatXpText1
	text_end
	
CheatHouseStatXpText2:				;used if flag set (cheat enabled)
	text_far _CheatHouseStatXpText2
	text_end

StatXpFlagSetText:
	text_far _StatXpFlagSetText
	text_end

StatXpFlagResetText:
	text_far _StatXpFlagResetText
	text_end

StatXpStayEnabledText:
	text_far _StatXpStayEnabledText
	text_end

StatXpStayDisabledText:
	text_far _StatXpStayDisabledText
	text_end

CheatHouseLevelLimitText:
	text_asm
	ld a, [wCheatFlags]		;flag 0 is the level limit flag
	bit 0, a
	jr nz, .flagSet
;flag not set
	ld hl, CheatHouseLevelLimitText1
	jr .printHello
.flagSet
	ld hl, CheatHouseLevelLimitText2
	;fall through
.printHello
	call PrintText
	call YesNoChoice		; if yes, wCurrentMenuItem is 0. If no, 1
	ld a, [wCurrentMenuItem]
	and a
	ld a, [wCheatFlags]
	jr nz, .dontChangeFlag
;change stat xp flag
	bit 0, a
	jr z, .ifNotSet
;ifSet
	res 0, a
	ld hl, LevelLimitFlagResetText
	jr .saveNewFlag
.ifNotSet
	set 0, a
	ld hl, LevelLimitFlagSetText
	;fall through
.saveNewFlag
	ld [wCheatFlags], a
	call PrintText
	jp TextScriptEnd
.dontChangeFlag
	bit 0, a
	jr nz, .stayDisabled
;stayEnabled
	ld hl, LevelLimitStayEnabledText
	jr .printUnchangedFlag
.stayDisabled
	ld hl, LevelLimitStayDisabledText
.printUnchangedFlag
	call PrintText
	jp TextScriptEnd

CheatHouseLevelLimitText1:				;used if flag not set (cheat disabled)
	text_far _CheatHouseLevelLimitText1
	text_end
	
CheatHouseLevelLimitText2:				;used if flag set (cheat enabled)
	text_far _CheatHouseLevelLimitText2
	text_end

LevelLimitFlagSetText:
	text_far _LevelLimitFlagSetText
	text_end

LevelLimitFlagResetText:
	text_far _LevelLimitFlagResetText
	text_end

LevelLimitStayEnabledText:
	text_far _LevelLimitStayEnabledText
	text_end

LevelLimitStayDisabledText:
	text_far _LevelLimitStayDisabledText
	text_end

