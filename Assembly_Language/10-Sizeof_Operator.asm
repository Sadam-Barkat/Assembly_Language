include irvine32.inc

.data
     myArray byte 10h,20h,30h,40h,50h
.code
     main proc
     mov eax, sizeof myArray
     call writedec
     call crlf
exit
main endp
end main