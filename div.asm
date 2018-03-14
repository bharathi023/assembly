extern printf
extern scanf

section .data
	integer1: dd 0
	out1:db "%d",0
	integer2: dd 0
	out2:db "%d",0
	out:db"%d",0

section .text
	global main
	
	main:
	push ebp
	mov ebp,esp
	
	push integer1
	push out1
	call scanf
	
	
	push integer2
	push out2
	call scanf
	
	mov edx,0
	mov eax,[integer1]
	mov ebx,[integer2]
	div ebx
	
	push eax
	push out
	call printf
	
	leave
	ret
