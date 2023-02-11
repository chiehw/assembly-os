mov ax, 001
mov bx, 002
mov cx, 003
add ax, bx
add ax, cx
add ax, ax

mov ax, 4E20H 
add ax, 1416H ; ax 6236
mov bx, 2000H
add ax, bx  ; ax 8236
mov bx, ax  
add ax, bx  ; ax 046C
mov ax, 001AH
mov bx, 0026H
add al, bl  ; ax 0040
add ah, bl  ; ax 2640
add bh, al
mov ah, 0
add al, bl  ; ax 0066
add al, 9CH ; ax 0002

; 2^8
mov ax, 1
add ax, ax
jmp 2000:0003

; register -> memory 
mov bx, 1000H
mov ds, bx  ; segment
mov al, [0] 

; memory -> register
mov bx, 1000H
mov ds, bx
mov [0], al

mov bx, 1000H
mov ds, bx
mov ax, [0]
mov bx, [2]
mov cx, [1]
add bx, [1]
add cx, [2]

mov ax, 1000
mov ds, ax
mov ax, 11316
mov [0], ax
mov bx, [0]
mov bx, [2]
mov [2], bx

mov ax, 1000
mov ds, ax
mov [0], cs

mov ax, 1000
mov ds, ax
mov ds, [0]

mov ax, 123BH
mov ds, ax
mov al, 0
add al, [0]
add al, [1]
add al, [2]

mov ax, 0123H
push ax
mov bx, 2266
push bx
mov cx, 1122
push cx
pop ax
pop bx
pop cx

mov ax, 1000H
mov ds, ax
push [0]
pop [2]

mov ax, 1000H
mov ss, ax
mov sp, 0010H
mov ax, 001AH
mov bx, 001BH
push ax
push bx
sub ax, ax
sub bx, bx
pop bx
pop ax

mov ax, 1000H
mov ss, ax
mov sp, 0010H
mov ax, 001AH
mov bx, 001BH
push ax
push bx
pop ax
pop bx

