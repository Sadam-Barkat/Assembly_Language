include irvine32.inc

.data
     nam byte "Sadam",0
     Fnam byte "Barkat Khan",0
.code
     main proc
     mov edx,offset nam
     call writestring
     call crlf
     
     mov edx,offset Fnam
     call writestring
     call crlf
  
     
exit
main endp
end main
     