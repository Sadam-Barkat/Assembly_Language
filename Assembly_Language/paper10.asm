include irvine32.inc
.data
msg1 byte "Enter the height of triangle",0
char byte 'A'
row dword ?
col dword ?
.code
main proc
mov edx,offset msg1
call writestring
call crlf
call readint
mov row,eax
mov ecx,row
mov eax,0
outer:
mov ebx,ecx
mov ecx,row
inner:
mov al,char
call writechar
mov al,' '
call writechar
inc char
loop inner
dec row
mov ecx,ebx
call crlf
loop outer
exit 
main endp
end main