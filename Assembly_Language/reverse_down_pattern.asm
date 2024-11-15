include irvine32.inc
.data
msg byte 'enter the rows : ', 0
 pr dword ?
space dword  1
.code
main proc
	mov edx , offset msg
	call writestring
	call readint
	mov  pr , eax

	mov ecx , eax
outer:
	mov ebx , ecx
	mov ecx , space
inner1:

	mov al , ' '
	call writechar
	loop inner1
	mov ecx , pr
inner2:
	mov al , '*'
	call writechar
	loop inner2
	inc space
	dec pr
	call crlf
	mov ecx , ebx
	loop outer
exit
main endp 
end main