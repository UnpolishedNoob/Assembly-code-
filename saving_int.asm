;integer of two digit will be given through console
;it have to store in cx register

org 100h

mov dx,10

mov ah,1h
int 21h

sub ax,48 ;getting decimal digit from ascii code
          ;just substracted 48 form the value
mul dx
mov cx,ax

mov ah,1h
int 21h 

sub ax,48
add cx,ax 

;we can store integer of more digit
;using this logic

;every time we have to multiply
;value of ax by 10 and add the next digit
 
ret




