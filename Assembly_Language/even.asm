include irvine32.inc
.data
.code
main proc
	mov eax,2
	mov ecx,50
	label1:
	call writedec
	call crlf
	add eax,2
	loop label1
	call crlf
	
exit
main endp
end main