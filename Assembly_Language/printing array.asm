include irvine32.inc

.data
     numbers dword 10,20,30,40,50
.code
     main proc
     mov eax, sizeof numbers
     call writedec
     call crlf
     mov eax,[numbers]
     call writedec
     call crlf
     mov eax,[numbers+type numbers]
     call writedec
     call crlf
     mov eax,[numbers+ type numbers]
     call writedec
     call crlf
exit
main endp
end main