;=========================================
; XOR Logic using Push Buttons
; A -> PD2 (Arduino Pin 2)
; B -> PD3 (Arduino Pin 3)
; LED -> PD4 (Arduino Pin 4)
;=========================================

.include "m328pdef.inc"

.org 0x0000
    rjmp START

START:

; PD4 OUTPUT
ldi r16, (1<<DDD4)
out DDRD, r16

LOOP:

; Read Port D
in r17, PIND

; Extract A (PD2)
mov r18, r17
andi r18, (1<<PD2)

; Extract B (PD3)
mov r19, r17
andi r19, (1<<PD3)

; XOR operation
eor r18, r19

; If result = 0
breq LED_OFF

LED_ON:
    sbi PORTD, PD4
    rjmp LOOP

LED_OFF:
    cbi PORTD, PD4
    rjmp LOOP
