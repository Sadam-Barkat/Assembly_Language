include irvine32.inc
.data
	a dword 10
	b dword 20
.code
main proc
	mov eax,a
	mov ebx,b
	mov a,ebx
	mov b,eax
	mov eax,a
	call writedec
	call crlf
	mov eax,b
	call writedec
	call crlf
exit
main endp
end main