include irvine32.inc
.data 
	msg byte "Enter the number: ",0
	number dword ?
.code
main proc
	mov edx,offset msg
	call writestring
	call readint
	mov number,eax
	mov ebx,1
	mov ecx,10
	mov eax,number
	label1:
	call writedec
	mov al,"*"
	call writechar
	mov eax,ebx
	call writedec
	mov al,"="
	call writechar
	mov eax,number
	mul ebx
	inc ebx
	call writedec
	call crlf
	mov eax,number
	loop label1
	call crlf
exit
main endp
end main