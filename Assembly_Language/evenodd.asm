include irvine32.inc
.data
msg1 byte "Enter the number: ",0
msg2 byte "The given number is Even",0
msg3 byte "The given number is Odd",0
.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	mov edx,0
	mov ebx,2
	div ebx
	cmp edx,1
	jz odd
	mov edx,offset msg2
	call writestring
	jmp quit
	odd:
	mov edx,offset msg3
	call writestring
	quit:
	call crlf
	
exit
main endp
end main