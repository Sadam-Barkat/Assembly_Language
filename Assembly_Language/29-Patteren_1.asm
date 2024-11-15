include irvine32.inc

.data
     col dword 4
     spacecount dword 1
.code
     main proc
     mov ecx,4
outer:
     mov ebx,ecx
     mov ecx,spacecount
space:
     mov al,' '
     call writechar
     loop space
     mov ecx,col
inner:
     mov al,'$'
     call writechar
     loop inner
     dec col
     inc spacecount
     mov ecx,ebx
     call crlf
     loop outer
exit
main endp
end main