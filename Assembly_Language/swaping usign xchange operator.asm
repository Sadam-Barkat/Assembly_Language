include irvine32.inc

.data
     num1 dword 10
     num2 dword 20
     msg1 byte "Value before swaping: ",0
     msg2 byte "Value after swaping: ",0
.code
main proc
	mov edx,offset msg1
	call writestring
	mov eax,num1
	call writedec
	call crlf
	
	mov edx,offset msg1
	call writestring
	mov eax,num2
	call writedec
	call crlf
	
	mov edx,offset msg2
	call writestring
	mov eax,num1
	mov ebx,num2
	XCHG eax,ebx
	call writedec
	call crlf
	
	mov edx,offset msg2
	call writestring
	mov eax,num1
	mov ebx,num2
	XCHG ebx,eax
	call writedec
	call crlf
exit
main endp
end main