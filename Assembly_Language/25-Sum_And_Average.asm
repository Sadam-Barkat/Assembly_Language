include irvine32.inc

.data
     arr dword 10,20,30,40,50
     sum dword 0
     msg1 byte "The Sum is",0
     msg2 byte "The Average is",0
.code
     main proc
     mov esi,0
     mov ecx,lengthof arr
avg:
     mov eax,arr[esi]
     add sum,eax
     add esi,type arr
     loop avg
     mov eax,sum
;Print Sum
     mov edx,offset msg1
     call writestring
     call crlf
     call writedec
     call crlf
     mov edx,0
;Print Averagae
     mov ebx,lengthof arr
     idiv ebx
     mov edx,offset msg2
     call writestring
     call crlf
     call writedec
     call crlf
exit
main endp
end main
     