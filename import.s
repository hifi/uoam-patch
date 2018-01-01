/* Imports for uoam.exe */
.equ ImageBase, 0x1000000

.section .idata

/* ADVAPI32.dll */
.long 0x31380    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x318CE    /* Name */
.long 0x1000     /* FirstThunk */

/* KERNEL32.dll */
.long 0x31444    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x320FE    /* Name */
.long 0x10C4     /* FirstThunk */

/* GDI32.dll */
.long 0x313C4    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x322F4    /* Name */
.long 0x1044     /* FirstThunk */

/* USER32.dll */
.long 0x31660    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x3289A    /* Name */
.long 0x12E0     /* FirstThunk */

/* SHELL32.dll */
.long 0x3164C    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x328E8    /* Name */
.long 0x12CC     /* FirstThunk */

/* COMCTL32.dll */
.long 0x313AC    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x32930    /* Name */
.long 0x102C     /* FirstThunk */

/* comdlg32.dll */
.long 0x3181C    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x32970    /* Name */
.long 0x149C     /* FirstThunk */

/* RPCRT4.dll */
.long 0x31620    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x32A40    /* Name */
.long 0x12A0     /* FirstThunk */

/* WSOCK32.dll */
.long 0x3180C    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x32A4C    /* Name */
.long 0x148C     /* FirstThunk */

/* WINMM.dll */
.long 0x31804    /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x32A66    /* Name */
.long 0x1484     /* FirstThunk */

/* UpdateAce.DLL */
/*
.long 0x317CC    /* OriginalFirstThunk *
.long 0x0        /* TimeDateStamp *
.long 0x0        /* ForwarderChain *
.long 0x32A70    /* Name *
.long 0x144C     /* FirstThunk */

/* END */
.long 0x0        /* OriginalFirstThunk */
.long 0x0        /* TimeDateStamp */
.long 0x0        /* ForwarderChain */
.long 0x0        /* Name */
.long 0x0        /* FirstThunk */

