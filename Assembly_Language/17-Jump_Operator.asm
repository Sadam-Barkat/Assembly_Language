include irvine32.inc

.code
     main proc
     mov eax,100
     add eax,50
     jmp lable1
    
     
lable1:
     add eax,200
     call writedec
     call crlf
exit
main endp
end main
     