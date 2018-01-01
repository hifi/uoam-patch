/* Use real map1.mul and statics */
.include "patch.s"
.intel_syntax

memset 0x100982E, 0x90, 0x1009834
memljmp 0x100982E, map1_loader

memset 0x10099BE, 0x90, 0x10099C4
memljmp 0x10099BE, staidx1_loader

memset 0x10099F7, 0x90, 0x10099FD
memljmp 0x10099F7, statics1_loader

.data
map1_mul: .string "MAP1.MUL"
staidx1_mul: .string "staidx1.mul"
statics1_mul: .string "statics1.mul"

.text
map1_loader:
    mov eax, [esi+0x131cc]
    cmp eax,1
    jnz 0x1009834
    mov ecx, offset map1_mul
    jmp 0x100985b

staidx1_loader:
    mov eax, [esi+0x131cc]
    cmp eax,1
    jnz 0x10099c4
    mov eax, offset staidx1_mul
    jmp 0x10099eb

statics1_loader:
    mov eax, [esi+0x131cc]
    cmp eax,1
    jnz 0x10099fd
    mov eax, offset statics1_mul
    jmp 0x1009a24
