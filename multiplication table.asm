extern printf
extern scanf

section .data
	inp:db"give  no to get a multiplication table",5,0
	ou:db"%s",0
	integer1: dd 0
	out1:db "%d",0
	sum:db"%d*%d = %d     ",0
section .text
	global main
	
	main:
	 push ebp
    	 mov ebp,esp
    	push inp
	push ou
	call printf
	
	push integer1
	push out1
	call scanf

	mov ebx,1
	l1:
	mov eax,[integer1]	
	imul eax,ebx
	push eax
	push ebx
	push dword[integer1]
	push sum
	call printf
	
	inc ebx
	cmp ebx,10	
	jle l1
	
  
leave
ret
	
