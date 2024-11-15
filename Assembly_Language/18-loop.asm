include irvine32.inc

.code
     main proc
     mov eax,10
     mov ecx,10
disp:
     call writedec
     call crlf
     dec eax
     loop disp
exit
main endp
end main