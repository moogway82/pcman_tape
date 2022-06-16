; PC-MAN Tape Loader

.MODEL TINY
.CODE

ORG 0100h

start:
	mov ax,24c5h
	mov es,ax
	mov ax,0200h
	mov cx,4000h
	;PC Booter should use 4c5
	mov bx,0
	int 15h
	mov ax, 24c5h
	push ax
	mov ax,0
	push ax
	retf

END start