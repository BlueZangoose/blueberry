AnimCut:
	ld a, [wCutTile]
	cp $52
	jr z, .grass
	ld c, $8
.cutTreeLoop
	push bc
	ld hl, wOAMBuffer + $91
	ld a, 1
	ld [wCoordAdjustmentAmount], a
	ld c, 2
	call AdjustOAMBlockXPos2copy	; replicated due to this file being moved out of the bank containing this function
	ld hl, wOAMBuffer + $99
	ld a, -1
	ld [wCoordAdjustmentAmount], a
	ld c, 2
	call AdjustOAMBlockXPos2copy	; replicated due to this file being moved out of the bank containing this function
	ldh a, [rOBP1]
	xor $64
	ldh [rOBP1], a
	call DelayFrame
	pop bc
	dec c
	jr nz, .cutTreeLoop
	ret
.grass
	ld c, 2
.cutGrassLoop
	push bc
	ld c, $8
	call AnimCutGrass_UpdateOAMEntries
	call AnimCutGrass_SwapOAMEntries
	ld c, $8
	call AnimCutGrass_UpdateOAMEntries
	call AnimCutGrass_SwapOAMEntries
	ld hl, wOAMBuffer + $90
	ld a, 2
	ld [wCoordAdjustmentAmount], a
	ld c, 4
	call AdjustOAMBlockYPos2copy	; replicated due to this file being moved out of the bank containing this function
	pop bc
	dec c
	jr nz, .cutGrassLoop
	ret

AnimCutGrass_UpdateOAMEntries:
	push bc
	ld hl, wOAMBuffer + $91
	ld a, 1
	ld [wCoordAdjustmentAmount], a
	ld c, 1
	call AdjustOAMBlockXPos2copy	; replicated due to this file being moved out of the bank containing this function
	ld hl, wOAMBuffer + $95
	ld a, 2
	ld [wCoordAdjustmentAmount], a
	ld c, 1
	call AdjustOAMBlockXPos2copy	; replicated due to this file being moved out of the bank containing this function
	ld hl, wOAMBuffer + $99
	ld a, -2
	ld [wCoordAdjustmentAmount], a
	ld c, 1
	call AdjustOAMBlockXPos2copy	; replicated due to this file being moved out of the bank containing this function
	ld hl, wOAMBuffer + $9d
	ld a, -1
	ld [wCoordAdjustmentAmount], a
	ld c, 1
	call AdjustOAMBlockXPos2copy	; replicated due to this file being moved out of the bank containing this function
	ldh a, [rOBP1]
	xor $64
	ldh [rOBP1], a
	call DelayFrame
	pop bc
	dec c
	jr nz, AnimCutGrass_UpdateOAMEntries
	ret

AnimCutGrass_SwapOAMEntries:
	ld hl, wOAMBuffer + $90
	ld de, wBuffer
	ld bc, $8
	call CopyData
	ld hl, wOAMBuffer + $98
	ld de, wOAMBuffer + $90
	ld bc, $8
	call CopyData
	ld hl, wBuffer
	ld de, wOAMBuffer + $98
	ld bc, $8
	jp CopyData
	
;NEW: Replicated from engine/battle/animations.asm as it is no longer in the same bank. Used in dust_smoke.asm, has to be here because it falls through.
AdjustOAMBlockXPosCopy:
	ld l, e
	ld h, d
;NEW: Replicated from engine/battle/animations.asm as it is no longer in the same bank.
AdjustOAMBlockXPos2copy:
	ld de, 4
.loop
	ld a, [wCoordAdjustmentAmount]
	ld b, a
	ld a, [hl]
	add b
	cp 168
	jr c, .skipPuttingEntryOffScreen
; put off-screen if X >= 168
	dec hl
	ld a, 160
	ld [hli], a
.skipPuttingEntryOffScreen
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret

;NEW: Replicated from engine/battle/animations.asm as it is no longer in the same bank. Used in dust_smoke.asm, has to be here because it falls through.
AdjustOAMBlockYPosCopy:
	ld l, e
	ld h, d
;NEW: Replicated from engine/battle/animations.asm as it is no longer in the same bank.
AdjustOAMBlockYPos2copy:
	ld de, 4
.loop
	ld a, [wCoordAdjustmentAmount]
	ld b, a
	ld a, [hl]
	add b
	cp 112
	jr c, .skipSettingPreviousEntrysAttribute
	dec hl
	ld a, 160 ; bug, sets previous OAM entry's attribute
	ld [hli], a
.skipSettingPreviousEntrysAttribute
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret