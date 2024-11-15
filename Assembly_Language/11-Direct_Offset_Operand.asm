include irvine32.inc

.data
     myArray dword 10,20,30,40,50
.code
     main proc
     mov eax,myArray
     call writedec
     call crlf
     mov eax,[myArray+4]
     call writedec
     call crlf
exit 
main endp
end main