include irvine32.inc

.data
msg byte 'enter the rows : ',0
pr dword 1
num byte 65
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
 	mov al , num
  	call writechar
  	inc num
  	
  	loop inner
	
	inc pr 
	mov ecx , ebx
	
	call crlf 
	loop outer
 exit
main endp
end main