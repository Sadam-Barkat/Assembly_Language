include irvine32.inc

.data
     x dword 100
     y dword 200
     msg1 byte "hello world",0
     MSIZE = $ - msg1
     Array word 10, 20,30, 40,50
     ASIZE = $ - Array
     Noe = ($ - array)/2
     msg2 byte "The Number of Elements in Array are : ",0
     msg3 byte "Values Before Swapping are : ",0
     msg4 byte "Values After Swapping are : ",0
     msg5 byte "Enter a Small Case Letter : ",0 
     msg6 byte "Convertd into Large latter: ",0 
.code

;Msg Size     
     main proc
     mov eax,MSIZE
     call writedec
     call crlf

;Array Size
     mov eax,ASIZE
     call writedec
     call crlf
     
;Number of Element     
     mov edx,offset msg2
     call writestring
     mov eax,Noe
     call writedec
     call crlf
     
;Enter New Value in Eax     
     mov eax, 12345678h
     call writehex
     call crlf
     
;Enter 64 in Eax 
     mov eax,64h
     rol eax, 24            ;rol eax,24 means rotate eax bits to the left by 24 bits
     call writehex
     call crlf

;Before Swaping
     mov edx,offset msg3
     call writestring
     mov eax,x
     call writedec
     mov al,","
     call writechar 
     mov eax,y
     call writedec
     call crlf

;After Swaping
     mov eax,x
     mov ebx,y
     mov x,ebx
     mov y,eax
     mov edx,offset msg4
     call writestring
     mov eax,x
     call writedec
     mov al,","
     call writechar 
     mov eax,y
     call writedec
     call crlf
     
;Convert small letter inot large latter     
     mov edx,offset msg5
     call writestring
     call readchar
     call writechar
     call crlf
     sub al,32
     mov edx,offset msg6
     call writestring
     call writechar
     call crlf
exit
main endp
end main