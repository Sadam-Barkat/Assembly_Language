include irvine32.inc

.data
     msg1 byte "Ente the number:",0
     msg2 byte "Your number is :",0
.code 
     main proc
     mov edx,offset msg1
     call writestring
     call crlf
     call readint    
     mov edx,offset msg2
     call writestring
     call writedec
     call crlf
 
exit
main endp
end main