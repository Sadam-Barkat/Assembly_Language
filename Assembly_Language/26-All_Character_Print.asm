include irvine32.inc

.code
     main proc
     mov ecx,256
     mov eax,1
print:
     call writechar
     call crlf
     inc eax
     loop print
exit
main endp
end main
     