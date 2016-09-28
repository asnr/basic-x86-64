# Print "Hello world\n" using putchar

.text
.globl _main
_main:
 	subq $8, %rsp  # align the stack pointer
 	
 	movq $72, %rdi  # 72 = 'H' in ASCII
 	call _putchar
 	
 	movq $101, %rdi  # 'e'
 	call _putchar
 	
 	movq $108, %rdi  # 'l'
 	call _putchar

 	movq $108, %rdi  # 'l'
 	call _putchar

	movq $111, %rdi  # 'o'
 	call _putchar 	

	movq $32, %rdi   # ' '
 	call _putchar 	

	movq $119, %rdi  # 'w'
 	call _putchar 	

 	movq $111, %rdi  # 'o'
 	call _putchar 	

	movq $114, %rdi  # 'r'
 	call _putchar 	

	movq $108, %rdi  # 'l'
 	call _putchar 	

	movq $100, %rdi  # 'd'
 	call _putchar 	

	movq $10, %rdi   # '\n'
 	call _putchar 	

	movq $0, %rdi  # argument for exit
  	call _exit
