include irvine32.inc

.data
     a dword ?
     msg1 byte 'Enter the Number :',0
     msg2 byte 'Your Number in Decimal :',0
     msg3 byte 'Your Number in Binary :',0
     
.code
     main proc
     mov edx,offset msg1
     call writestring
     call readint
;Decimal    
     mov edx,offset msg2
     call writestring
     call writedec
     call crlf
     
;Binary     
     mov edx,offset msg3
     call writestring
     call writebin
     call crlf
exit
main endp
end main
     