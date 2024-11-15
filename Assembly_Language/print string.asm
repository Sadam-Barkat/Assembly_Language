include irvine32.inc
.data
	myname byte "MY name is Hussain",0
.code
main proc
	mov edx,offset myname
	call writestring
	call crlf
exit
main endp
end main