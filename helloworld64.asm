section .data
	msg		db		"Hello World!", 0x0a
	len		equ		$ - msg

section	.text
	global entrypoint
	entrypoint:
		mov		rdi, 0x00000001			; stdout.
		mov		rsi, msg
		mov		rdx, len

		mov		rax, 0x02000004			; sys_write
		syscall

	exit:
		mov		rdi, 0x00000000			; exit code.
		mov		rax, 0x02000001			; sys_exit
		syscall
