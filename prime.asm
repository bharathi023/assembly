extern printf
extern scanf

section .data
	print1:db"it is a prime  no ",10,0
	print2:db"it is not a prime no ",10,0
	print:db"give a no to check whether prime or not",10,0
	inp:dd 0
	out:db"%d",0
section .text
	global main
	
	main:
	push ebp
	mov ebp,esp
	
	push print
	call printf

	push inp
	push out
	call scanf
	
	mov ecx,1
	l1:
	inc ecx
	mov edx,0
	mov eax,[inp]
	mov ebx,ecx
	div ebx
	cmp ebx,[inp]
	je ans
	cmp edx,0
	jne l1
	jmp ans1
	
	ans:
	push print1
	call printf
	jmp exit
	
	ans1:	
	push print2
	call printf
	jge l1
	
	exit:
	leave
	ret
