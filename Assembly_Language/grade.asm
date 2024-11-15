include irvine32.inc
.data
msg byte "Enter the number: ",0
msg1 byte "Your grade is A",0
msg2 byte "Your grade is B",0
msg3 byte "Your grade is C",0
msg4 byte "Your grade is D",0
msg5 byte "Your grade is F",0
msg6 byte "You number is grater than 100 , This is invalid ",0
.code
main proc
start:
mov edx,offset msg
call writestring
call readint
cmp eax,100
jg wrongnum
jle gradeA
cmp eax,85
jl gradeB
cmp eax,70
jl gradeC
cmp eax,50
jl gradeD
cmp eax,33
jl gradeF
gradeA:
cmp eax,85
jl gradeB
mov edx,offset msg1
call writestring
jmp quit

gradeB:
cmp eax,70
jl gradeC
mov edx,offset msg2
call writestring
jmp quit

gradeC:
cmp eax,50
jl gradeD
mov edx,offset msg3
call writestring
jmp quit

gradeD:
cmp eax,33
jl gradeF
mov edx,offset msg4
call writestring
jmp quit

gradeF:
mov edx,offset msg5
call writestring
jmp quit

wrongnum:
mov edx,offset msg6
call writestring
call crlf
jmp start
quit:
call crlf
exit
main endp
end main