include irvine32.inc

.code
     main proc
     mov eax,100
     call writedec
     call crlf
;inc
     inc eax
     call writedec
     call crlf
;dec
     dec eax
     call writedec
     call crlf
exit 
main endp
end main 