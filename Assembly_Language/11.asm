include irvine32.inc

.data
      msg byte 'enter the rows : ',0
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
 	mov eax , 1
 inner:
  	call writedec
  	inc eax
  	loop inner
	inc pr 
	mov ecx , ebx
	call crlf 
	loop outer
 exit
main endp
end main