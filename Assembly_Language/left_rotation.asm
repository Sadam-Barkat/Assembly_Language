include irvine32.inc
.data
msg1 byte 'ENTER 5 ELEMENTS of array : ',0
msg2 byte ' LEFT ROTATION : ' , 0  
arr dword 5 dup(?)

.code


main PROC
	mov edx , offset msg1 
	call writestring
	call crlf
	
	call input
	call  output
	call rotate

	mov edx , offset msg2
	call writestring
	call crlf
	call output
  exit
  main endp 
  
  
input proc
mov esi ,0
    mov ecx , lengthof arr
 input1:
 	call readint
 	mov arr[esi] , eax
 	add esi , type arr
 	loop input1
RET
input endp


rotate proc
    	mov esi, 0 
 	mov ebx , ecx
    	mov edx, SIZEOF arr - TYPE arr 
    	mov ecx, LENGTHOF arr 
	mov ebx , arr[esi]
left_rotate:
	mov eax , arr[esi + type arr]
	mov arr[esi] , eax
	add esi , type arr
    	loop left_rotate
mov arr[edx] , ebx
RET
rotate endp

output proc
  	mov esi ,0
    	mov ecx , lengthof arr
 inner:
 	mov eax , arr[esi]
 	call writedec
 	mov al , ' '
 	call writechar
 	add esi , type arr
 	loop inner
 	call crlf
RET
output endp
end main