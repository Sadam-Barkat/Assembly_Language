include irvine32.inc

.data
     temp dword ?
     msg1 byte "Enter the number :",0
     msg2 byte "The Table of :",0
.code
     main proc
     mov edx,offset msg1
     call writestring
     call readint
     mov temp,eax
     mov ebx,1
     mov ecx,10
     
;show the line (The Table of...)     
     mov edx,offset msg2
     call writestring
     call writedec
     call crlf
table:
     mov eax,temp
     call writedec
     mov al,'*'
     call writechar
     mov eax,ebx
     call writedec
     mov al,'='
     call writechar
     mov eax,temp
     imul ebx
     call writedec
     call crlf
     inc ebx
     loop table     
exit
main endp
end main