include irvine32.inc
.data
     a byte ?
     prompt byte "Enter A Character",0
     result byte "You Enter This Character",0
     msg1 byte "The value in Binary :",0
     msg2 byte "The value in Decimal :",0
     msg3 byte "The value in Hexadecimal :",0
.code
     main proc
     mov edx,offset prompt
     call writestring
     call crlf
     call readchar
     mov edx,offset result
     call writestring
     call crlf
     call writechar
     call crlf
     
     mov edx,offset msg1
     call writestring
     call writebin
     call crlf
     
     mov edx,offset msg2
     call writestring
     call writedec
     call crlf
     
     mov edx,offset msg3
     call writestring
     call writehex
     call crlf
     
   
 
exit
main endp
end main