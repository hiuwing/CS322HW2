	.file	"mac.s"
	.globl	_f
_f:
	pushl	%ebp
	movl	%esp,%ebp
        movl    8(%ebp),  %esi
        movl    12(%ebp), %edi
        pushl   %ebx

### This is where your code begins ...
        # I added sth. in the master
#hiuwinghon add sht.
        movl    (%esi), %ebx
        addl    $4, %esi
        movl    (%esi), %ecx
        imull   %ebx, %ecx
        movl    %ecx, %eax

        movl    (%edi), %ebx
        addl    $4, %edi
        movl    (%edi), %ecx
        imull   %ebx, %ecx

        addl    %ecx, %eax

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
