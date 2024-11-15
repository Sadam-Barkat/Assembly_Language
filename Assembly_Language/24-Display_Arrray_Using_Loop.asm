include irvine32.inc

.data
     arr dword 10,20,30,40,50
.code
     main proc
     mov esi,offset arr
     mov ecx,5
disp:
     mov eax,[esi]
     call writedec
     call crlf
     add esi,type arr
     loop disp
exit
main endp
end main
     