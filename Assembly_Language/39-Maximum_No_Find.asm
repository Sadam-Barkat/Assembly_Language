include irvine32.inc

.data
     array dword 10,40,20,70,30,80,50,60,100
     msg byte "The Maximum Number is : ",0
     max dword ?
.code
     main proc
     mov esi,offset array
     mov ecx,lengthof array
     mov ebx,[esi]
     mov max,ebx
comperision:
     mov eax,[esi]
     cmp eax,max
     ja update 
     jmp nextmove
update:
     mov max,eax
nextmove:
     add esi,type array
     loop comperision
     
;Print maxValue     
     mov edx,offset msg
     mov eax,max
     call writestring
     call writedec
     call crlf
exit
main endp
end main
     
         