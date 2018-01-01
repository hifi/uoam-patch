/* GNU ld linker script for uoam.exe */
start = 0x102578D;
ENTRY(start);
SECTIONS
{
    .text             0x1001000 : { uoam.exe(.text) }
    .data             0x1033000 : { uoam.exe(.data) . = ALIGN(0x1000); }
    .bss         ALIGN(0x1000) : { . = . + 0x1E80; }
    /DISCARD/                  : { uoam.exe(.rsrc) }

    .idata       ALIGN(0x1000) : { *(.idata) }

    /DISCARD/                  : { *(.drectve) *(.rdata$zzz) }
    .p_text      ALIGN(0x1000) : { *(.text) }
    .p_rdata     ALIGN(0x1000) : { *(.rdata) }
    .p_data      ALIGN(0x1000) : { *(.data) }
    .p_bss       ALIGN(0x1000) : { *(.bss) *(COMMON) }
    .rsrc        ALIGN(0x1000) : { *(.rsrc) }

    .patch       ALIGN(0x1000) : { *(.patch) }
}
