include irvine32.inc

.data
     msg byte "Enter the marks :",0
     msg1 byte "Grade A",0
     msg2 byte "Grade B",0
     msg3 byte "Grade C",0
     msg4 byte "Grade F",0
     msg5 byte "Invalid Marks",0
     marks dword ?
.code
     main proc
     mov edx,offset msg
     call writestring
     call readint
comperision:
     cmp eax,90
     je movGradeA
     
     cmp eax,100
     ja invalid
     
     cmp eax,90
     ja movGradeA
     
     cmp eax,70
     je movGradeB
     ja movGradeB
     
     cmp eax,50
     je movGradeC
     ja movGradeC
     
     cmp eax,1
     je movGradeF
     Ja movGradeF
     
     cmp eax,100
     je movGradeA
     jb movGradeA
     
movGradeA:
     mov edx,offset msg1
     call writestring
     call crlf
     jmp Quit
movGradeB:
     mov edx,offset msg2
     call writestring
     call crlf
     jmp Quit
movGradeC:
     mov edx,offset msg3
     call writestring
     call crlf
     jmp Quit
movGradeF:
     mov edx,offset msg4
     call writestring
     call crlf
     jmp Quit
invalid:
     mov edx,offset msg5
     call writestring
     call crlf
     jmp Quit
Quit:
exit
main endp
end main