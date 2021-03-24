 include 'emu8086.inc'

ORG 100h

LEA SI,msg1

CALL PRINT_STRING

CALL scan_num
mov ax,cx
putc 10

LEA SI,msg2
CALL PRINT_STRING
CALL scan_num
mov bx,cx
putc 10
JMP calc
back: JMP stop
calc:
mul bx
Print "The product is: "
CALL print_num
putc 10
putc 13
JMP back
stop:
RET
msg1 DB 'Enter the first number: ',0
msg2 DB 'Enter the second number: ',0

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END