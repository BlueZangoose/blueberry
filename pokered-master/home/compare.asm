; Compare strings, c bytes in length, at de and hl.
; Often used to compare big endian numbers in battle calculations.
StringCmp::
	ld a, [de]	; load the current byte of de (largest value of the first number)
	cp [hl]		; compare to the current byte of hl (largest value of the second number). If identical, z=1. If second value is larger, c=1
	ret nz		; return if z=0 (not identical)
	inc de		; move to the next byte of de (smaller values of the first number)
	inc hl		; move to the next byte of hl (smaller values of the second number)
	dec c		; Counter based on number of bytes in the strings; if result if 0, z=1, otherwise, z=0
	jr nz, StringCmp	; jump back up to the beginning if z=0
	ret		; this return is called if all of the comparisons matched and the two strings were identical. At this point, z=1
