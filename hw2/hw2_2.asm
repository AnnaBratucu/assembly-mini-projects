include emu8086.inc

org     100h

jmp start  ; skip over the declarations and data




buffer db "empty buffer --- empty buffer"
size = $ - offset buffer  ; declare constant
msg1   db "Enter a string: ", 0


start:
; print a welcome message:
lea     si, msg1
call    print_string

; get string to ds:di
lea     di, buffer      ; buffer offset.
mov     dx, size        ; buffer size.
call    get_string

putc    0Dh
putc    10 ; next line.

; print using macro:
print "You've entered: "

; print string in ds:si using procedure:
mov     si, di
call    print_string

; wait for any key...
mov     ax, 0
int     16h

ret    

DEFINE_PRINT_STRING
DEFINE_GET_STRING

End          