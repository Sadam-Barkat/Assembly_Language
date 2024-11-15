include irvine32.inc

.data
     myArray dword 10,20,30,40,50
.code
     main proc
     mov esi, offset myArray
     mov eax, [esi]
     call writedec
     call crlf
     add esi,type myArray
     mov eax, [esi]
     call writedec
     call crlf
     
exit 
main endp
end main