include irvine32.inc
.data
msg1 byte "Enter the number: ",0
msg2 byte "The given number is prime ",0
msg3 byte "The given number is not prime ",0
num dword ?
count dword 0
.code
main proc
mov edx,offset msg1
call writestring
call readint
mov ecx,eax
mov num,eax
mov ebx,1
chkprime:
mov edx,0
idiv ebx
cmp edx,0
jz valid
jmp invalid
valid:
inc count
invalid:
inc ebx
mov eax,num
loop chkprime
mov eax,count
cmp eax,2
jz isprime
jmp notprime
isprime:
mov edx,offset msg2
call writestring
jmp quit
notprime:
mov edx,offset msg3
call writestring
quit:
call crlf
exit
main endp
end main