include irvine32.inc

.data
      msg1 byte "Pakistan",0
      msg2 byte "Sadam Khan",0
.code
      main proc
      call fun1
      call fun2
exit 
main endp
      fun1 proc
      mov edx,offset msg1
      call writestring
      call crlf
      ret
fun1 endp
      fun2 proc
      mov edx,offset msg2
      call writestring
      call crlf
      ret
fun2 endp
end main