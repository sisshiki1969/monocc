// <EOF>
.intel_syntax noprefix
.global main
main:
	push rbp
	mov  rbp, rsp
	sub  rsp, 8
	mov  rax, 0
	call foo
	mov  rsp, rbp
	pop  rbp
	ret
