include irvine32.inc
.data
msg1 byte "Enter a string in capital letters",0
msg2 byte "string in lower case letter",0
name1 byte 70 dup(?)
.code
main proc
mov edx,offset msg1
call writestring
call crlf
mov edx,offset name1
mov ecx,sizeof name1
call readstring
mov edx,offset msg2
call crlf
call writestring
call crlf
mov edx,offset name1
call writestring
mov ecx,lengthof name1
mov esi,offset name1
call crlf
mov eax,0
lowercase:
mov al,[esi]
cmp al,' '
je l1
jmp l2
l1:
call writechar
inc esi
loop lowercase
l2:
add al,32
call writechar
inc esi
loop lowercase
exit
main endp
end main
call crlf
exit 
main endp
end main