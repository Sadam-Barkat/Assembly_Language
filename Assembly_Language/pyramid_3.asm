include irvine32.inc
.data
msg byte 'enter the rows : ', 0
 pr dword 1
space dword  ?
.code
main proc
	mov edx , offset msg
	call writestring
	call readint
	mov space , eax 
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
	dec space
	add pr , 2
	call crlf
	mov ecx , ebx
	loop outer
exit
main endp 
end main