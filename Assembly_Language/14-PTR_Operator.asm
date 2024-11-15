   include irvine32.inc

.data
     temp dword ?
.code
     main proc
     mov temp,12345678h
     
;mov address of only first byte of temp to al   
     mov al,byte PTR temp
     call writehex
     call crlf
     
;mov address of second byte of temp to al
     mov al,byte PTR temp+1
     call writehex
     call crlf
     
;mov address of 3rd byte of temp to al  
     mov ah,byte PTR temp+2
     call writehex
     call crlf     
exit
main endp
end main 