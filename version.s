/* Add stub versioning information */
.include "patch.s"
.intel_syntax

memcpy 0x1017152, "push offset version"

.data
version: .string "version 8.2.0.1p0"
