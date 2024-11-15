include irvine32.inc

.data
     a dword ?
.code
     main proc
     call readint
     mov ecx,eax
     mov eax,1
fact:
     imul eax,ecx
     loop fact
     call writedec
     call crlf
exit
main endp
end main
     
     