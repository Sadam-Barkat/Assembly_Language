include irvine32.inc
.data
msg1 byte 'ENTER 10 ELEMENTS of array : ',0
msg2 byte 'REVERSED ARRAY : ' , 0  
arr dword 10 dup(?)

.code


main PROC

mov edx , offset msg1 
call writestring
call crlf
 mov esi ,0
    mov ecx , lengthof arr
 input:
 	call readint
 	mov arr[esi] , eax
 	add esi , type arr
 	loop input
 	
 	
    mov esi, 0 
    mov edx, SIZEOF arr - TYPE arr 
    mov ecx, LENGTHOF arr / 2

reverse:
    mov eax , arr[esi]
    mov ebx, arr[edx]
    mov arr[esi], ebx
    mov arr[edx], eax 
    add esi, TYPE arr
    sub edx, TYPE arr  
    loop reverse


mov edx , offset msg2
call writestring
call crlf

    mov esi ,0
    mov ecx , lengthof arr
 inner:
 	mov eax , arr[esi]
 	call writedec
 	call crlf
 	add esi , type arr
 	loop inner
 	call crlf
exit
main endp 
end main