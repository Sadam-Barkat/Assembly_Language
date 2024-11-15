include irvine32.inc
.data

num1 dword 0
num2 dword 1
count dword ?

.code
main proc

call readint 
mov count , eax 

mov eax , num1 
call writedec
call crlf


mov eax , num2 
call writedec
call crlf

sub count , 2

mov ecx , count 
mov eax , num1
mov ebx , num2

fibonic:
	add eax , ebx
	
	call writedec
	call crlf
	
	mov num2 , eax 
	mov eax , ebx 
	mov ebx , num2
	loop fibonic

exit
main endp 
end main