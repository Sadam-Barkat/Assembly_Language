include irvine32.inc

.data
     msg1 byte "Enter the value :",0
     msg2 byte "The number is Even",0
     msg3 byte "The number is Odd",0
.code
     main proc
     mov edx,offset msg1
     call writestring
     call readint
     mov edx,0
     mov ebx,2
     idiv ebx
     
     cmp edx,0
     jz EvenValue
     jmp OddValue
EvenValue:
     mov edx,offset msg2
     call writestring
     call crlf
     jmp Quit
OddValue: 
     mov edx,offset msg3
     call writestring
     call crlf
     jmp Quit
Quit:
     exit
     
exit
main endp
end main