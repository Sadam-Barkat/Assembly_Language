include irvine32.inc

.data
     array dword 10,20,30,40,50
.code
     main proc
     mov esi,offset array
     mov ecx,lengthof array-1
label1:
    add esi,type array
    loop label1
    mov ecx,lengthof array
label2:
    mov eax,[esi]
    call writedec
    call crlf
    sub esi,type array
    loop label2
exit
main endp
end main
    