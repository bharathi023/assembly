extern printf	
extern scanf
	
section .data
	  ques: db "enter a name: ",0
	  inp: db "%s",0
	  out: db "Hii %s !! ",0

	  section .text	

	  global main:
 main:
    push ebp
    mov ebp,esp
    

    push ques
    call printf
	
    push inp,
    call scanf

    pop eax,
    push out,
    call printf
	
	
  	
    leave 
    ret
	
