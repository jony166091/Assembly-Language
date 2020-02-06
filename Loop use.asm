.model small
.stack 100h
.data
.code 
main proc 
    mov ax,@data
    mov ds,ax
    
     mov cx,5   ;cx have value 10 
    mov dx,48   ; dx = 0 ;
   
    L1:
     
     mov ah,2
     int 21h
     
     add cx,dx
     sub cx,48
           
     add dx,1  ;inc dx
    
    
    
    
    Loop L1
  
    
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main