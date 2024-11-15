include irvine32.inc

.code
     main proc
     mov eax,1
     mov ecx,0
disp:
     call writedec
     call crlf
     inc eax
     loop disp
exit
main endp
end main