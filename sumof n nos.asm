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
	mov ebx,1
	mov eax,0
	
	l1:
	add eax,ebx
	inc ebx		
	cmp ebx,[inp]	
	
	
	jle l1
	push eax
	push out
	call printf
	leave
	ret
