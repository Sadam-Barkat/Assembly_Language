include irvine32.inc
.data
array dword 10,20,30,40,50
msg1 byte "Enter the number: ",0
msg2 byte "The Number is find in the Array ",0
msg3 byte "The Number is Not find in the Array ",0
msg4 byte "The index of  Number is: ",0
msg5 byte "The Number is: ",0
index dword 0
.code
main proc
mov edx,offset msg1
call writestring
call readint
mov esi,offset array
mov ecx,sizeof array
l1:
cmp eax,[esi]
jz find
inc index
add esi,type array
loop l1
mov edx,offset msg3
call writestring
jmp quit
find:
mov edx,offset msg2
call writestring
call crlf
mov edx,offset msg5
call writestring
call writedec
call crlf
mov edx,offset msg4
call writestring
mov eax,index
call writedec
quit:
call crlf
exit
main endp
end main