include irvine32.inc
.data
	msg1 byte "Enter Your Name: ",0
	myname byte 50 dup (?)
	msg2 byte "Your Name is: ",0
.code
main proc
	mov edx,offset msg1
	call writestring
	mov edx,offset myname
	mov ecx,length myname
	call readstring
	mov edx,offset msg2
	call writestring
	mov edx,offset myname
	call writestring
	call crlf
exit
main endp
end main