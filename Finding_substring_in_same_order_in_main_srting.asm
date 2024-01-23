;A main string is given and a sub string given
;we have to find if the sub string is in same 
;order in the main string and keep output in an
;another array

org 100h

.data 
str1 db 'we love kuet'
length equ ($-str1)
str2 db 'wtu'           ;we have to find if we can find "wtu" 
length2 equ ($-str2)    ; the the same order in the str1 
count db 0

Y db 'yes'
N db 'no.'
ans db  <3> ?


.code 
mov si,offset str1
mov bx,offset str2 
mov cx,length


round:
mov dl,[si]
cmp dl,[bx]
je count_one 

here:
inc si
loop round
 

cmp count,length2
je equal
jne not_equal 

count_one:
inc bx
add count,1
jmp here


equal:
mov cx,3 
mov si,offset Y
mov bx,offset ans 

print_y:
mov dl,[si]
mov [bx],dl
inc bx
inc si
loop print_y

ret

not_equal:
mov cx,3 
mov si,offset N
mov bx,offset ans 

print_n:
mov dl,[si]
mov [bx],dl
inc bx
inc si
loop print_n
ret





