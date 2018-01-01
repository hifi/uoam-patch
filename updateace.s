/* Remove UpdateAce completely */
.include "patch.s"

memset 0x102389A, 0x90, 0x1024757
memljmp 0x102389A, 0x1024757
