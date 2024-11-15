include irvine32.inc

.data
     a dword 10
     b dword 20
     msg1 byte "The Value of a Before Swaping is :",0
     msg2 byte "The Value of b Before Swaping is :",0
     msg3 byte "The Value of a After Swaping is :",0
     msg4 byte "The Value of b After Swaping is :",0
.code
     main proc

;Print a before swapign   
     mov eax,a
     mov edx,offset msg1
     call writestring
     call writedec
     call crlf
    
;Print b before swaping    
     mov eax,b
     mov edx,offset msg2
     call writestring
     call writedec
     call crlf
     
;swapign through XCHG instruction
     mov eax,a
     mov ebx,b
     XCHG eax,ebx
     mov edx,offset msg3
     call writestring
     call writedec
     call crlf
     
     XCHG eax,ebx
     mov edx,offset msg4
     call writestring
     call writedec
     call crlf   
exit
main endp
end main 