include irvine32.inc
.data
msg byte 'enter the rows : ', 0
 pr dword 1

.code
main proc
	mov edx , offset msg
	call writestring
	call readint
	mov ecx , eax
outer:
	mov ebx , ecx
	mov ecx , pr
inner:
	mov al , '*'
	call writechar
	loop inner
	
	inc pr
	call crlf
	mov ecx , ebx
	loop outer
exit
main endp 
end main