 org 100h
	mov ah, 3ch
	mov cx, 0
	mov dx, offset filename
	mov ah, 3ch
	int 21h  ; create file... 
	mov handle, ax

	mov bx, handle
	mov dx, offset data
	mov cx, data_size
	mov ah, 40h
	int 21h ; write to file... 

	mov al, 0
	mov bx, handle
	mov cx, 0
	mov dx, 7
	mov ah, 42h
	int 21h ; seek... 

	mov bx, handle
	mov dx, offset buffer
	mov cx, 4
	mov ah, 3fh
	int 21h ; read from file... 

	mov bx, handle
	mov ah, 3eh
	int 21h ; close file... 
	ret

	filename db "myfile.txt", 0
	handle dw ?
	data db " Some text : blablabla "
	data_size=$-offset data
	buffer db 4 dup(' ')                              
