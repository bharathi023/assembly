extern printf
extern scanf

section .data
	inp: dd 0
	out:db"%d",0

section .text
	global main
	
	main:
	 push ebp
    	 mov ebp,esp
    	
	
	push inp
	push out
	call scanf
	mov ebx,0

	
	l1:
	inc ebx
	push ebx
	push out
	call printf	
	cmp ebx,[inp]	
	
	
	jne l1
	
	leave
	ret
