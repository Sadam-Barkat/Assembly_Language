include irvine32.inc

.data
     a dword 75
     b dword -100
.code
     main proc
     mov eax,a
;NEG      
     NEG eax
     call writedec
     call crlf
;Again NEG     
     NEG eax
     call writedec
     call crlf
      
     mov eax,b
;NEG 
     NEG eax
     call writedec
     call crlf
;Again NEG
     NEG eax
     call writedec
     call crlf
     
exit
main endp
end main