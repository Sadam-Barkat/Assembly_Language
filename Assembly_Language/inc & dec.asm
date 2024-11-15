include irvine32.inc
.data
	a dword 10
.code
main proc
	mov eax,a
	call writedec
	call crlf
	inc a
	mov eax,a
	call writedec
	call crlf
	dec eax
	call writedec
	call crlf
exit
main endp
end main