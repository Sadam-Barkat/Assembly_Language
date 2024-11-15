include irvine32.inc

.data
     a dword ?
     b dword ?
     msg1 byte "Enter the first number :",0
     msg2 byte "Enter the second number :",0
     msg3 byte "The Sum is :",0
     msg4 byte "The Multiplication is :",0
     msg5 byte "The Subtraction is :",0
     msg6 byte "The Division is :",0
.code
     main proc
     mov edx,offset msg1
     call writestring
     call readint
     
     mov a,eax
     mov edx,offset msg2
     call writestring
     call readint
     call crlf

     mov b,eax
     call clrscr

;Function Calling
     call sumition
     call multiplication
     call subtraction
     call division
exit
main endp
      
;Now define functions
     sumition proc
     mov eax,a
     mov ebx,b
     add eax,ebx
     mov edx,offset msg3
     call writestring
     call writedec
     call crlf
     ret
sumition endp
     multiplication proc
     mov eax,a
     mov ebx,b
     imul ebx
     mov edx,offset msg4
     call writestring
     call writedec
     call crlf
     ret
multiplication endp
     subtraction proc
     mov eax,a
     mov ebx,b
     sub eax,ebx
     mov edx,offset msg5
     call writestring
     call writedec
     call crlf
     ret
subtraction endp
     division proc
     mov edx,0
     mov eax,a
     mov ebx,b
     idiv ebx
     mov edx,offset msg6
     call writestring
     call writedec
     call crlf
     ret
division endp
end main