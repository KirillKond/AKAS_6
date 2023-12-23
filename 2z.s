%include "syscall.mac"
section .data
	input_msg: db "Enter a string: ", 20
	output_msg: db "You entered: ", 15
section .bss
    	buffer resb 64
section .text
	global _start

_start:
    WRITE input_msg, 15, 1 ; вызов макроса для вывода
    READ buffer ; вызов макроса для ввода
    WRITE output_msg, 12, 1 ; вызов макроса для вывода
    WRITE buffer, 64, 1 ; вызов макроса для вывода
    EXIT 0 ; вызов макроса для завершения программы
