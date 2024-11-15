include irvine32.inc

.data
     a dword 50
.code
     main proc
     mov eax,2
     mov ecx,a
disp:
     call writedec
     call crlf
     add eax,2
     loop disp
exit
main endp
end main