include irvine32.inc
.data
msg1 byte "Enter the number: ",0
msg2 byte "The given number is positive",0
msg3 byte "The given number is negative",0
.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	cmp eax,0
	js negative
	mov edx,offset msg2
	call writestring
	jmp quit
	negative:
	mov edx,offset msg3
	call writestring
	quit:
	call crlf
	
exit
main endp
end main