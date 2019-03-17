section data
msg db "Hello,world!",0xA
len equ $ msg;
section .text;
global start;
start:
	mov eax,4;
	mov abx,1;
	mov ecx,msg;
	mov edx,len;
	int 0x80;
	mov eax,1;
	xor ebx,ebx;
	int 0x80;
