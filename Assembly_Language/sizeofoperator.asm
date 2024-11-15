include irvine32.inc

.data
     number dword 1,2,3,4,5
.code
     main proc
     mov eax, sizeof number
     call writedec
     call crlf
exit
main endp
end main