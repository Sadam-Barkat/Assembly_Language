include irvine32.inc
.data
msg1 byte 'ENTER 5 ELEMENTS of array : ',0
msg2 byte ' RIGHT ROTATION : ' , 0  
arr dword 5 dup(?)

.code
main PROC
	mov edx , offset msg1 
	call writestring
	call crlf
 	
 	call input
 	call output
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


 output proc
 	mov esi ,0
	mov ecx , lengthof arr
	
output1:
	  mov eax , arr[esi]
	  call writedec
	  mov al , ' '
	  call writechar
	  add esi , type arr
	  loop output1
	 call crlf
 	
     RET
     output endp
     
     rotate proc
         	mov esi, 0 
      		mov ebx , ecx
         	mov edx, SIZEOF arr - TYPE arr 
         	mov ecx, LENGTHOF arr 
     		mov ebx , arr[edx]
right_rotate:
     		mov eax , arr[edx - type arr]
     		mov arr[edx] , eax
     		sub edx , type arr
         	loop right_rotate
 
     		mov arr[esi] , ebx

     RET
     rotate endp
end main