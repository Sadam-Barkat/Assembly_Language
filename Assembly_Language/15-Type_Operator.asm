include irvine32.inc

.data
     a dword 100
     b byte 10
     arr byte 10,20,30,40,50
.code
     main proc
;Type of a     
     mov eax, type a
     call writedec
     call crlf
     
;Type of b
     mov eax,type b
     call writedec
     call crlf
;Type of arr
     mov eax,type arr
     call writedec
     call crlf
exit
main endp
end main