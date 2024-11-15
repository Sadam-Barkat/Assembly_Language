include irvine32.inc
.data
	a dword 10
	msg1 byte "In Binary: ",0
	msg2 byte "In Binary : ",0
.code
main proc
	mov eax,a
	mov edx,offset msg1
	call writestring
	call writedec
	call crlf
	mov edx,offset msg2
	call writestring
	call writebin
	call crlf
main endp
end main