.text
	.globl  math_func
	.type  math_func, @function
math_func:
	pushl %ebp
	movl %esp,%ebp
	# note how this file changed from the previous case 
	# https://githun.com/compilers24/math0_template/blob/main/math.png
	# What is the difference?
	# take a look at our previous test.c as well.
	# https://github.com/compilers24/math0_template/blob/main/test.c
 	# what is the difference?
 
	# file functions_x86.txt describes how functions work in case of x86  architecture.
	# arguments get passed to the stack, in very short.
	# so at this point our stack contains variables, passed by the function.
	# this moves first passed argument from the stack to the %rax register
	movl 8(%ebp), %ecx
	# this moves second passed
	movl 12(%ebp), %edx
	# j - i
	subl %ecx, %edx
	# at the end of the function %rax should contain the result of the function
	movl %edx, %eax
	#function exits
	movl %ebp, %esp
	popl %ebp
	ret
