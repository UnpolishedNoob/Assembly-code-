;a string will be give and have to check if it is a palidrome

;check palidrome without using any 
;"loop" , "ret" command 

;must have to use stack and function
;can use either 'si' or 'di' register
;if palidrome make dx=1 else dx=0

org 100h 

.data 
str db 'pritommotirp'        
len equ ($-str)
check db 0

.code

jmp start
end_code:
hlt        ;using 'hlt' for halting program


start:
        
mov si,offset str
mov cx,len


stack:      ;this is for pushing the 
push [si]   ;string in stack
inc si
dec cx
cmp cx,0
jg stack

mov si,offset str
mov cx,len 


com:        ;comparing the string

pop ax 
mov bx,[si]
inc si
cmp bl,al
je up 

con: 
dec cx
cmp cx,0
jg com

cmp check,len
je equal
jne note


equal:      ;if palidrome it will exicute
mov dx,1
jmp endc

note:       ;if not palidrome it will exicute
mov dx,0
jmp endc 


up:
inc check
jmp con:

endc:
jmp end_code






