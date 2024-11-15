include irvine32.inc

.code
     main proc
     mov ecx,10
disp:
     mov eax,ecx
     call writedec
     call crlf
     loop disp
exit
main endp
end main