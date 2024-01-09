;Printing a character string
;A character string will be given
;Have to print it with a loop
;we can't use $ sign 


org 100h

.data
msg db 'Pritom Banik'
.code

mov cl,12 
lea si,msg 

print:
  
mov dl,[si]
mov ah,2h
int 21h  

add si,1 

loop print

ret