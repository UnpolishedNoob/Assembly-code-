;A number will be given and have to  find the grade
;if number>=80 a register have to make 5
;if number>=70 a register have to make 4
;if number>=60 a register have to make 3
;if number>=50 a register have to make 2
;if number>=40 a register have to make 1
;if number <40 a register have to make 0

org 100h
mov ax,34 

cmp ax,79
jg A_plus
           
           
cmp ax,69
jg A     


cmp ax,59
jg A_minus


cmp ax,49
jg B       

cmp ax,39
jg B_minus 
jl fail


;Taken CL as a output register

A_plus:
mov cl,5
jmp ending

a:          
mov cl,4
jmp ending 

A_minus:
mov cl,3
jmp ending 

B:
mov cl,2
jmp ending

B_minus:
mov cl,1
jmp ending

fail:
mov cl,0
jmp ending

ending:
ret