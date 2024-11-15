include irvine32.inc
.data
	myarray dword 10,20,30,40,50
.code
main proc
	mov esi,offset myarray
	mov ecx,5
	label1:
	mov eax,[esi]
	call writedec
	mov al," "
	call writechar
	add esi,type myarray
	loop label1
	call crlf
exit
main endp
end main