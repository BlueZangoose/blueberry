;_TM29PreReceiveText::
;	text "...Wait! Don't"
;	line "say a word!"
;
;	para "You wanted this!"
;	prompt
	
_TM29PreReceiveText::
	text "Prepare to be"
	line "DAZZLED!"

	para "What a sight!"
	prompt

_ReceivedTM29Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_TM29ExplanationText::
	text "TM42 is DAZZLE!"		; was tm29

	para "It can make the"
	line "target flinch!"
;	cont "abilities."
	done

_TM29NoRoomText::
	text "Where do you plan"
	line "to put this?"
	done
