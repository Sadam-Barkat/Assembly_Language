include irvine32.inc

.data
     col dword 1
     spacecount dword 3
.code
     main proc
     mov ecx,3
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
     add col,2
     dec spacecount
     mov ecx,ebx
     call crlf
     loop outer
exit
main endp
end main