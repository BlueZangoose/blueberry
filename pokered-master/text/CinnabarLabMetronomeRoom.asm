;_TM35PreReceiveText::
;	text "Tch-tch-tch!"
;	line "I made a cool TM!"
;
;	para "It can cause all"
;	line "kinds of fun!"
;	prompt
	
_TM35PreReceiveText::
	text "P...p...please..."
	line "T-take this TM..."

	para "It haunts m-my"
	line "dreams..."
	prompt

_ReceivedTM35Text::
	text "<PLAYER> received "
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

;_TM35ExplanationText::
;	text "Tch-tch-tch!"
;	line "That's the sound"
;	cont "of a METRONOME!"
;
;	para "It tweaks your"
;	line "#MON's brain"
;	cont "into using moves"
;	cont "it doesn't know!"
;	done

_TM35ExplanationText::
	text "OMEN SCREAM..."
	line "Keep that TM away"
	cont "from m-me..."

	para "I heard it when"
	line "I worked in the"
	cont "old mansion..."
	cont "That #MON's..."
	done

;_TM35NoRoomText::
;	text "Your pack is"
;	line "crammed full!"
;	done

_TM35NoRoomText::
	text "P...please..."
	line "Make space..."
	done

_Lab3Text2::
	text "EEVEE can evolve"
	line "into 1 of 3 kinds"
	cont "of #MON."
	done

_Lab3Text3::
	text "There's an e-mail"
	line "message!"

	para "..."

	para "The 3 legendary"
	line "bird #MON are"
	cont "ARTICUNO, ZAPDOS"
	cont "and MOLTRES."

	para "Their whereabouts"
	line "are unknown."

	para "We plan to explore"
	line "the cavern close"
	cont "to CERULEAN."

	para "From: #MON"
	line "RESEARCH TEAM"

	para "..."
	done

_Lab3Text5::
	text "An amber pipe!"
	done
