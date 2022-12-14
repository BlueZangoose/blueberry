GetMachinePrice::
; Input:  [wcf91] = Item Id of a TM
; Output: Stores the TM price at hItemPrice
	ld a, [wcf91] ; a contains TM item id
	sub TM01 ; underflows below 0 for HM items (before TM items)
	ret c ; HMs are priceless
	ld d, a
	ld hl, TechnicalMachinePrices
	srl a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl] ; a contains byte whose high or low nybble is the TM price (in thousands)
	srl d
	jr nc, .highNybbleIsPrice ; is TM id odd?
	swap a
.highNybbleIsPrice
	and $f0						; a is now a number from 0 to 15
	ldh [hItemPrice + 1], a		; hItemPrice is 3 bytes. This is the middle byte
	xor a
	ldh [hItemPrice], a			; high byte of price
	ldh [hItemPrice + 2], a		; low byte of price
	ret

INCLUDE "data/items/tm_prices.asm"
