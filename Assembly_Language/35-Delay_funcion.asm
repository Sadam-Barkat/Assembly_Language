include irvine32.inc

.data
     num dword 1,2,3,4,5,6,7,8,9,10
.code
     main proc
     mov esi,offset num
     mov ecx,lengthof num
disp:     
     mov eax,[esi]
     call delay
     call delay
     call delay
     call delay
     call delay
     call delay
     call delay
     call delay
     call delay
     call delay
     call writedec
     call crlf
     add esi,type num
     loop disp
     
exit 
main endp
end main