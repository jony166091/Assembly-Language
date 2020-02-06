.model small
.stack 100h
.data 

Msg1 db 'Enter an Input: $'
Msg2 db ' Greater $ '
Msg3 db 'Smaller $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,Msg1
    Mov ah,9
    Int 21h
    
    Mov ah,1
    Int 21h
    Mov bl,al
    sub bl,48
    
    cmp bl,5 
    
    JL L1     
    
    lea dx,Msg2
    mov ah,9
    int 21h 
    
    Jmp exit
    
    L1:
    lea dx,msg3
    mov ah,9
    int 21h
              
    exit:
    mov ah,4ch
    int 21h
    main endp
end main