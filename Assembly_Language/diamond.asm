include irvine32.inc
.data

 pr dword 1
 pr1 dword 5
space dword  4
space1 dword 2
.code
main proc
	mov ecx , 4
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
	
	mov ecx , 3
outer1:
	 mov ebx , ecx 
	 mov ecx , space1
space_1:
	mov al , ' '
	call writechar
	loop space_1
	mov ecx , pr1
print:
	mov al , '*'
	call writechar
	loop print
	inc space1
	sub pr1 , 2
	call crlf
	mov ecx , ebx
	loop outer1
	
	

exit
main endp 
end main