.data
_hello:
  .asciz "Hello world%c\n"

.text
.globl _main
_main:
  subq $8, %rsp

  # specify that we will not be passing variadic arguments to printf
  movb $0, %al
  # load effective address of _hello relative to the current
  # instruction pointer into %rdi
  leaq _hello(%rip), %rdi
  movq $33, %rsi  # '!'
  call _printf

  movq $0, %rdi
  call _exit
