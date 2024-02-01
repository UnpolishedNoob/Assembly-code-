;this is the program to get the
;Fibonacci sequence 
;also learning the use of "proc" keyword

org 100h

.data
num dw 8        ;to which position we want to get the sequence
arr db num dup(?) ;declaring array of that number

.code
  mov al,0
  mov bl,1 
  mov si,offset arr
  mov cx,num
  call fibo
  ret
  
  
  
  fibo proc       
        count:
        
       mov [si],al
       inc si
       mov dl,al
       add al,bl
       mov bl,dl 
       
       loop count 
       
       ret
       fibo endp
        


ret




