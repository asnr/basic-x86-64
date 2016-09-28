# Does nothing, just calls exit(0)

.text
.globl _main
_main:
 	subq $8, %rsp  # align the stack pointer
	movq $0, %rdi  # argument for exit
  	call _exit
