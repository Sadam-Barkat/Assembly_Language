include irvine32.inc

.data
     nam byte 10 dup(?)
     msg1 byte "Enter the nam :",0
     msg2 byte "Your name is :",0
.code
     main proc
     mov edx,offset msg1
     call writestring
     mov edx,offset nam
     mov ecx,lengthof nam
     call readstring
     mov edx,offset msg2
     call writestring
     mov edx,offset nam
     call writestring
     call crlf
     
exit
main endp
end main