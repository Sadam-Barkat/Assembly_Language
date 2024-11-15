include irvine32.inc

.data
     msg1 byte "Enter the number :",0
     msg2 byte "The number is prime",0
     msg3 byte "The number is not prime",0
     num dword ?
     count dword 0
.code
     main proc
     mov edx,offset msg1
     call writestring
     call readint
     mov ecx,eax
     mov num,eax
checkdivisible:
     mov ebx,1
     mov edx,0
     idiv ebx
     cmp edx,0
     je valid
     jmp nextmove
valid:
     inc count
nextmove:
     add ebx,1
     mov eax,num
     loop checkdivisible
     
;print is prime or not
     mov eax,count
     cmp eax,2
     jz isprime
     jmp notprime
isprime:
     mov edx,offset msg2
     call writestring
     call crlf
     jmp Quit
notprime:
     mov edx,offset msg3
     call writestring
     call crlf
     jmp Quit
Quit:
exit
main endp
end main
     
     