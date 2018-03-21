extern printf
extern scanf

section .data
	range:dd 0
    	inp:db"%d",0
	out1:db "%d",0
	x:dd 0
	out : db "%d",0
section .text
	
	global main
	main:
	
	push ebp
	mov ebp,esp

	push range
	push inp
	call scanf

	
	
	mov ebx,0
	mov eax,1
	mov edx,1
	mov ecx,0
	
	l1:
	add ebx,eax
	mov ecx,eax
	mov eax,ebx
	mov ebx,ecx
	inc edx
	cmp edx,[range]
	Jne l1
	push ebx
	push out
	call printf
	jmp exit
	
	l2:
	mov eax,0
	mov ecx,0
	add eax,ecx
	mov ebx,[range]
	cmp ebx,1
	jmp print
	
	print:	
	push eax
	push out1
	call printf
	exit:	
	leave 
	ret

	
	
