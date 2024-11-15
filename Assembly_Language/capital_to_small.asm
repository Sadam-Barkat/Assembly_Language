include irvine32.inc
.data
msg1 byte 'ENTER THE A STRING WHICH CONTAIN 10 ELEMENTS  IN CAPITAL : ',0
msg2 byte 'STRING IN SMALL LETTERS : ' , 0  
msg byte 6 dup(?)

.code


main PROC

mov edx , offset msg1 
call writestring
mov edx , offset msg
mov ecx , lengthof msg -1 
call readstring



mov edx , offset msg2
call writestring

    mov esi ,0
    mov ecx , lengthof msg-1
 inner:
 	mov al , msg[esi]
 	add al , 32
 	call writechar
 	add esi , type msg
 	loop inner
 	call crlf
exit
main endp 
end main