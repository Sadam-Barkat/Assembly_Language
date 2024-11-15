include irvine32.inc
.data
	number dword ?
	msg1 byte "The Number is: ",0
	msg2 byte "Enter the Number: ",0
.code
main proc
	mov edx,offset msg2
	call writestring
	call readint
	mov edx,offset msg1
	call writestring
	call writedec
	call crlf
exit
main endp
end main