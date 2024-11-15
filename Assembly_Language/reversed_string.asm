include irvine32.inc

.data
     msg1 byte 'ENTER THE A STRING WHICH CONTAIN 10 ELEMENTS  IN CAPITAL : ',0
     msg2 byte 'REVERSED STRING : ' , 0  
     msg byte 12 dup(?)
.code
     main proc
     mov edx , offset msg1 
     call writestring
     mov edx , offset msg
     mov ecx , lengthof msg -1 
     call readstring
     mov esi, 0 
     mov edx, SIZEOF msg - TYPE msg -1
     mov ecx, LENGTHOF msg / 2

reverse:
     mov al, msg[esi]
     mov bl, msg[edx]
     mov msg[esi], bl
     mov msg[edx], al 
     add esi, TYPE msg
     sub edx, TYPE msg
     loop reverse

     mov edx , offset msg2
     call writestring
     mov esi ,0
     mov ecx , lengthof msg-1
 inner:
     mov al , msg[esi]
     call writechar
     add esi , type msg
     loop inner
     call crlf
exit
main endp 
end main