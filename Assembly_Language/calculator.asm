include irvine32.inc
.data
	input1 dword ?
	input2 dword ?
	msg1 byte " Enter the First Number: ",0
	msg2 byte " Enter the second Number: ",0
	msg3 byte " The Sum is: ",0
	msg4 byte " The Subtraction is: ",0
	msg5 byte " The Multiplication is: ",0
	msg6 byte " The Division is: ",0
.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	mov input1,eax
	
	mov edx,offset msg2
	call writestring
	call readint
	mov input2,eax
	
	mov edx,offset msg3
	call writestring
	mov eax,input1
	mov ebx,input2
	add eax,ebx
	call writedec
	call crlf
	
	mov edx,offset msg5
	call writestring
	mov eax,input1
	mov ebx,input2
	mul ebx
	call writedec
	call crlf
	
	mov eax,input1
	mov edx,0
	idiv input2
	mov edx,offset msg6
	call writestring
	call writedec
	call crlf
	
	
main endp
end main