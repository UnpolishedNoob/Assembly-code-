;Copy the contents of one array
;to another array. 
;Use a loop for this task.

org 100h

.data
arr1 db "Should u love assembly?"
siz equ ($-arr1)
arr2 db siz dup(?)

.code    
mov si,offset arr1
mov di,offset arr2 
mov cx,siz 

copy:
mov ax,[si]
mov [di],ax
inc si
inc di
loop copy

mov cx,siz
mov di,offset arr1

print:
mov dl,[di]
mov ah,2h
int 21h
inc di
loop print

ret