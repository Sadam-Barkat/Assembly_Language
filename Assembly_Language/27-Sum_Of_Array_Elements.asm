include irvine32.inc

.data 
     msg1 byte "The array you made is",0
     msg2 byte "The sum of array is",0
     array dword 5,10,20,30,40
     sum dword 0
.code 
     main proc
     mov edx ,offset msg1
     call writestring
     call crlf
     mov esi,0
     mov ecx,lengthof array
output:
     mov eax,array[esi]
     call writedec
     add esi,type array
     add sum,eax
     call crlf
     loop output
     mov eax,sum
     mov edx,offset msg2
     call writestring
     call crlf
     call writedec
     call crlf
exit
main endp
end main
