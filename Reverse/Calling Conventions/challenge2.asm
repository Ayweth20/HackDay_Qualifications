; 32 bit assembly code incomplete syntax :)
.intel_syntax noprefix

; missing initialization code :)
	push   	ebp
	mov    	ebp,esp
	sub    	esp,0x10
	mov    	eax,DWORD PTR [ebp+0xc]
	mov 	DWORD PTR [ebp-0x4],eax
	mov    	eax,DWORD PTR [ebp+0x8]
	mov		DWORD PTR [ebp-0x8],eax
	jmp    	B
	
A:
	add    	DWORD PTR [ebp-0x4],0x1
	add		DWORD PTR [ebp+0x8],0x4d
	
B:
	cmp    	DWORD PTR [ebp+0x8],0x8f90
	jle    	A
	sub    	DWORD PTR [ebp-0x4],0x1
	add		DWORD PTR [ebp+0x8],0xff
	jmp		C
	
C:
	cmp    	DWORD PTR [ebp+0x8],0x8fb5
	jle		D
	sub    	DWORD PTR [ebp-0x4],0xdd
	
D:
	mov    	eax,DWORD PTR [ebp-0x4]
	jmp     E
	
E:
; missing code :)
