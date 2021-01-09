
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD


INCLUDE Irvine32.inc


.data
buffer db "10", 0
bufsize = ($ - buffer);  length of string
intval DWORD ?



.code
main  PROC
mov ecx, 0
mov   edx, OFFSET buffer
;mov ecx,1
call dumpregs 
call  ParseInteger32
mov   intval, EAX
call dumpregs


INVOKE ExitProcess, 0
main ENDP

END main