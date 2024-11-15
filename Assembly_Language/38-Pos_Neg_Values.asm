include irvine32.inc

.data
     msg1 byte "Enter The Number : ",0
     msg2 byte "The Number is Positive",0
     msg3 byte "The Number is Negative",0
.code
     main proc
     mov edx, offset msg1
     call writestring 
     call readint
     
     cmp eax,0
     ;if eax=0 then zf=1 and cf=0 or (zf=1)
     ;if eax>0 then zf=0 and cf=0 or (sign=of)
     ;if eax<0 then zf=0 and cf=1 or (sign!=of)
     js NegValue
     jmp PosValue    
     
PosValue:
     mov edx,offset msg2
     call writestring
     call crlf
     jmp Quit
     
NegValue:
     mov edx,offset msg3
     call writestring
     call crlf
     jmp Quit

Quit:
exit
main endp
end main 