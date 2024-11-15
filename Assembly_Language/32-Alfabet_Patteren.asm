include irvine32.inc

.data
     col dword 5
.code
     main proc
     mov ecx,5
     mov eax,65
outer:
     mov ebx,ecx
     mov ecx,col
inner :
     call writechar
     add eax,1
     loop inner
     call crlf
     dec col
     mov ecx,ebx
     loop outer
exit
main endp
end main