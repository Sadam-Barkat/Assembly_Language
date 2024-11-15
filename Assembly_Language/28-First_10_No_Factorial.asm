include irvine32.inc

.data
     fict byte "first 10 fictorials are as follows:",0
     num dword ?
.code
     main proc
     mov edx,offset fict
     call writestring
     call crlf
     mov ecx,10
     mov eax,1
     mov esi,1
outer:
     mov ebx,ecx
     mov eax,esi
     mov ecx,eax
     dec ecx
dis:
     imul ecx
     loop dis
     call writedec
     call crlf
     inc esi
     mov ecx,ebx
     loop outer
     call crlf
exit 
main endp
end main