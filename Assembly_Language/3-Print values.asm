include irvine32.inc

.data
     a dword 10
     b dword 15
     msg1 byte "Value of a :",0
     msg2 byte "Value of b :",0
.code
     main proc
     mov edx, offset msg1 
     call writestring
     mov eax, a
     call writedec
     call crlf
     
     mov edx, offset msg2
     call writestring
     mov eax, b
     call writedec
     call crlf
     
     
     
     
exit
main endp
end main