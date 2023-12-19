;A number will be store in AX
;We have to find if the number is odd or even
;if odd we have to store 1 in a register
;if even we have to store 0 in that register


org 100h
mov ax,6 
mov bx,2

div bx

cmp dx,1
jl even
je odd


;taken CL as an output register

even:
mov cl,0
 jmp ending

odd:
mov cl,1 
jmp ending

ending:
ret        