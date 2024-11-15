include irvine32.inc
.data
	number dword ?
	msg byte "Enter the number: ",0
	msg1 byte "The Factorial is: ",0
.code
main proc
	mov edx,offset msg
	call writestring
	call readint
	mov number,eax
	mov ecx,number
	mov eax,1
	label1:
	mul ecx
	loop label1
	mov edx,offset msg1
	call writestring
	call writedec
	call crlf
exit
main endp
end main