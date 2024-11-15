include irvine32.inc

.data
     num1 dword ?
     num2 dword ?
     msg1 byte "Enter The First No:",0
     msg2 byte "Enter The Second No:",0
     msg3 byte "The Sum is : ",0
     msg4 byte "The Subtraction is :",0
     msg5 byte "The Multiplicaton is :",0
     msg6 byte "The Division is :",0
.code
     Main Proc
     mov edx,offset msg1
     call writestring
     call crlf
     call readint
     mov num1,eax
     mov eax,num1
     call crlf
     
     mov edx,offset msg2
     call writestring
     call crlf
     call readint
     mov num2,eax
     mov eax,num2
     call crlf

;Addition  
     mov eax,num1
     mov ebx,num2
     add eax,ebx
     mov edx,offset msg3
     call writestring
     call writedec
     call crlf
     
;Subtraction
     mov eax,num1
     sub eax,num2
     mov edx,offset msg4
     call writestring
     call writedec
     call crlf
     
;Multiplication
     mov eax,0
     mov eax,num1
     imul eax,num2
     mov edx,offset msg5
     call writestring
     call writedec
     call crlf
     
;Division
     mov eax,0
     mov eax,num1
     mov edx,0
     idiv num2
     mov edx,offset msg6
     call writestring
     call writedec
     call crlf
     
     
     
exit
main endp
end main