PUSH1 0x80
PUSH1 0x40
MSTORE
PUSH1 0x4
CALLDATASIZE
LT
PUSH2 0x38
JUMPI
PUSH1 0x0
CALLDATALOAD
PUSH1 0xe0
SHR
DUP1
PUSH4 0x5a8c184f
EQ
PUSH2 0x44
JUMPI
DUP1
PUSH4 0x8f218e16
EQ
PUSH2 0x87
JUMPI
DUP1
PUSH4 0x9af675e1
EQ
PUSH2 0x14d
JUMPI
PUSH2 0x3f
JUMP
JUMPDEST
CALLDATASIZE
PUSH2 0x3f
JUMPI
STOP
JUMPDEST
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH2 0x85
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x60
DUP2
LT
ISZERO
PUSH2 0x5a
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
DUP1
CALLDATALOAD
ISZERO
ISZERO
SWAP1
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
PUSH1 0x20
DUP3
ADD
CALLDATALOAD
AND
SWAP1
PUSH1 0x40
ADD
CALLDATALOAD
PUSH2 0x17f
JUMP
JUMPDEST
STOP
JUMPDEST
PUSH2 0x85
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x60
DUP2
LT
ISZERO
PUSH2 0x9d
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
DUP2
ADD
SWAP1
PUSH1 0x20
DUP2
ADD
DUP2
CALLDATALOAD
PUSH5 0x100000000
DUP2
GT
ISZERO
PUSH2 0xb8
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
DUP3
ADD
DUP4
PUSH1 0x20
DUP3
ADD
GT
ISZERO
PUSH2 0xca
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
DUP1
CALLDATALOAD
SWAP1
PUSH1 0x20
ADD
SWAP2
DUP5
PUSH1 0x20
DUP4
MUL
DUP5
ADD
GT
PUSH5 0x100000000
DUP4
GT
OR
ISZERO
PUSH2 0xec
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
SWAP2
SWAP4
SWAP1
SWAP3
DUP3
CALLDATALOAD
SWAP3
PUSH1 0x40
DUP2
ADD
SWAP1
PUSH1 0x20
ADD
CALLDATALOAD
PUSH5 0x100000000
DUP2
GT
ISZERO
PUSH2 0x10e
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
DUP3
ADD
DUP4
PUSH1 0x20
DUP3
ADD
GT
ISZERO
PUSH2 0x120
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
DUP1
CALLDATALOAD
SWAP1
PUSH1 0x20
ADD
SWAP2
DUP5
PUSH1 0x20
DUP4
MUL
DUP5
ADD
GT
PUSH5 0x100000000
DUP4
GT
OR
ISZERO
PUSH2 0x142
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
SWAP1
SWAP3
POP
SWAP1
POP
PUSH2 0x330
JUMP
JUMPDEST
CALLVALUE
DUP1
ISZERO
PUSH2 0x159
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH2 0x85
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x40
DUP2
LT
ISZERO
PUSH2 0x170
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
DUP1
CALLDATALOAD
ISZERO
ISZERO
SWAP1
PUSH1 0x20
ADD
CALLDATALOAD
PUSH2 0x44a
JUMP
JUMPDEST
PUSH1 0x0
SLOAD
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
CALLER
EQ
PUSH2 0x205
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x11
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x4655434b20594f55555555555555555555000000000000000000000000000000
PUSH1 0x44
DUP3
ADD
MSTORE
SWAP1
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x64
ADD
SWAP1
REVERT
JUMPDEST
DUP3
ISZERO
PUSH2 0x23e
JUMPI
PUSH1 0x40
MLOAD
CALLER
SWAP1
DUP3
ISZERO
PUSH2 0x8fc
MUL
SWAP1
DUP4
SWAP1
PUSH1 0x0
DUP2
DUP2
DUP2
DUP6
DUP9
DUP9
CALL
SWAP4
POP
POP
POP
POP
ISZERO
DUP1
ISZERO
PUSH2 0x238
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
PUSH2 0x32b
JUMP
JUMPDEST
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
DUP3
AND
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
EQ
PUSH2 0x28b
JUMPI
PUSH2 0x27a
DUP3
ADDRESS
DUP4
PUSH2 0x672
JUMP
JUMPDEST
PUSH2 0x286
DUP3
ADDRESS
CALLER
DUP5
PUSH2 0x848
JUMP
JUMPDEST
PUSH2 0x32b
JUMP
JUMPDEST
PUSH1 0x40
DUP1
MLOAD
PUSH32 0xa9059cbb00000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
CALLER
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x24
DUP2
ADD
DUP4
SWAP1
MSTORE
SWAP1
MLOAD
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
SWAP2
PUSH4 0xa9059cbb
SWAP2
PUSH1 0x44
DUP1
DUP4
ADD
SWAP3
PUSH1 0x20
SWAP3
SWAP2
SWAP1
DUP3
SWAP1
SUB
ADD
DUP2
PUSH1 0x0
DUP8
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0x2fe
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
CALL
ISZERO
DUP1
ISZERO
PUSH2 0x312
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
POP
POP
PUSH1 0x40
MLOAD
RETURNDATASIZE
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0x328
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
POP
JUMPDEST
POP
POP
POP
JUMP
JUMPDEST
PUSH1 0x0
SLOAD
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
CALLER
EQ
PUSH2 0x3b6
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x11
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x4655434b20594f55555555555555555555000000000000000000000000000000
PUSH1 0x44
DUP3
ADD
MSTORE
SWAP1
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x64
ADD
SWAP1
REVERT
JUMPDEST
PUSH1 0x0
DUP1
PUSH1 0x0
DUP1
PUSH2 0x3c5
DUP8
PUSH2 0xa10
JUMP
JUMPDEST
SWAP4
POP
SWAP4
POP
SWAP4
POP
SWAP4
POP
PUSH2 0x43f
DUP5
DUP5
DUP5
DUP13
DUP13
DUP1
DUP1
PUSH1 0x20
MUL
PUSH1 0x20
ADD
PUSH1 0x40
MLOAD
SWAP1
DUP2
ADD
PUSH1 0x40
MSTORE
DUP1
SWAP4
SWAP3
SWAP2
SWAP1
DUP2
DUP2
MSTORE
PUSH1 0x20
ADD
DUP4
DUP4
PUSH1 0x20
MUL
DUP1
DUP3
DUP5
CALLDATACOPY
PUSH1 0x0
SWAP3
ADD
SWAP2
SWAP1
SWAP2
MSTORE
POP
POP
PUSH1 0x40
DUP1
MLOAD
PUSH1 0x20
DUP1
DUP16
MUL
DUP3
DUP2
ADD
DUP3
ADD
SWAP1
SWAP4
MSTORE
DUP15
DUP3
MSTORE
SWAP1
SWAP4
POP
DUP15
SWAP3
POP
DUP14
SWAP2
DUP3
SWAP2
DUP6
ADD
SWAP1
DUP5
SWAP1
DUP1
DUP3
DUP5
CALLDATACOPY
PUSH1 0x0
SWAP3
ADD
SWAP2
SWAP1
SWAP2
MSTORE
POP
DUP10
SWAP3
POP
PUSH2 0xa32
SWAP2
POP
POP
JUMP
JUMPDEST
POP
POP
POP
POP
POP
POP
POP
POP
POP
JUMP
JUMPDEST
PUSH1 0x0
SLOAD
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
CALLER
EQ
PUSH2 0x4d0
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x11
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x4655434b20594f55555555555555555555000000000000000000000000000000
PUSH1 0x44
DUP3
ADD
MSTORE
SWAP1
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x64
ADD
SWAP1
REVERT
JUMPDEST
DUP2
ISZERO
PUSH2 0x5ee
JUMPI
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
PUSH4 0xd0e30db0
DUP3
PUSH1 0x40
MLOAD
DUP3
PUSH4 0xffffffff
AND
PUSH1 0xe0
SHL
DUP2
MSTORE
PUSH1 0x4
ADD
PUSH1 0x0
PUSH1 0x40
MLOAD
DUP1
DUP4
SUB
DUP2
DUP6
DUP9
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0x532
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
CALL
ISZERO
DUP1
ISZERO
PUSH2 0x546
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
PUSH1 0x40
DUP1
MLOAD
PUSH32 0xa9059cbb00000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
ADDRESS
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x24
DUP2
ADD
DUP7
SWAP1
MSTORE
SWAP1
MLOAD
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
SWAP5
POP
PUSH4 0xa9059cbb
SWAP4
POP
PUSH1 0x44
DUP1
DUP4
ADD
SWAP4
POP
PUSH1 0x20
SWAP3
DUP3
SWAP1
SUB
ADD
DUP2
PUSH1 0x0
DUP8
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0x5bc
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
CALL
ISZERO
DUP1
ISZERO
PUSH2 0x5d0
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
POP
POP
PUSH1 0x40
MLOAD
RETURNDATASIZE
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0x5e6
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH2 0x66e
SWAP1
POP
JUMP
JUMPDEST
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
PUSH4 0x2e1a7d4d
DUP3
PUSH1 0x40
MLOAD
DUP3
PUSH4 0xffffffff
AND
PUSH1 0xe0
SHL
DUP2
MSTORE
PUSH1 0x4
ADD
DUP1
DUP3
DUP2
MSTORE
PUSH1 0x20
ADD
SWAP2
POP
POP
PUSH1 0x0
PUSH1 0x40
MLOAD
DUP1
DUP4
SUB
DUP2
PUSH1 0x0
DUP8
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0x655
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
CALL
ISZERO
DUP1
ISZERO
PUSH2 0x669
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
POP
POP
JUMPDEST
POP
POP
JUMP
JUMPDEST
PUSH1 0x40
DUP1
MLOAD
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
DUP5
DUP2
AND
PUSH1 0x24
DUP4
ADD
MSTORE
PUSH1 0x44
DUP1
DUP4
ADD
DUP6
SWAP1
MSTORE
DUP4
MLOAD
DUP1
DUP5
SUB
SWAP1
SWAP2
ADD
DUP2
MSTORE
PUSH1 0x64
SWAP1
SWAP3
ADD
DUP4
MSTORE
PUSH1 0x20
DUP3
ADD
DUP1
MLOAD
PUSH28 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
AND
PUSH32 0x95ea7b300000000000000000000000000000000000000000000000000000000
OR
DUP2
MSTORE
SWAP3
MLOAD
DUP3
MLOAD
PUSH1 0x0
SWAP5
PUSH1 0x60
SWAP5
SWAP4
DUP10
AND
SWAP4
SWAP3
SWAP2
DUP3
SWAP2
SWAP1
DUP1
DUP4
DUP4
JUMPDEST
PUSH1 0x20
DUP4
LT
PUSH2 0x748
JUMPI
DUP1
MLOAD
DUP3
MSTORE
PUSH32 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0
SWAP1
SWAP3
ADD
SWAP2
PUSH1 0x20
SWAP2
DUP3
ADD
SWAP2
ADD
PUSH2 0x70b
JUMP
JUMPDEST
PUSH1 0x1
DUP4
PUSH1 0x20
SUB
PUSH2 0x100
EXP
SUB
DUP1
NOT
DUP3
MLOAD
AND
DUP2
DUP5
MLOAD
AND
DUP1
DUP3
OR
DUP6
MSTORE
POP
POP
POP
POP
POP
POP
SWAP1
POP
ADD
SWAP2
POP
POP
PUSH1 0x0
PUSH1 0x40
MLOAD
DUP1
DUP4
SUB
DUP2
PUSH1 0x0
DUP7
GAS
CALL
SWAP2
POP
POP
RETURNDATASIZE
DUP1
PUSH1 0x0
DUP2
EQ
PUSH2 0x7aa
JUMPI
PUSH1 0x40
MLOAD
SWAP2
POP
PUSH1 0x1f
NOT
PUSH1 0x3f
RETURNDATASIZE
ADD
AND
DUP3
ADD
PUSH1 0x40
MSTORE
RETURNDATASIZE
DUP3
MSTORE
RETURNDATASIZE
PUSH1 0x0
PUSH1 0x20
DUP5
ADD
RETURNDATACOPY
PUSH2 0x7af
JUMP
JUMPDEST
PUSH1 0x60
SWAP2
POP
JUMPDEST
POP
SWAP2
POP
SWAP2
POP
DUP2
DUP1
ISZERO
PUSH2 0x7dd
JUMPI
POP
DUP1
MLOAD
ISZERO
DUP1
PUSH2 0x7dd
JUMPI
POP
DUP1
DUP1
PUSH1 0x20
ADD
SWAP1
MLOAD
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0x7da
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
MLOAD
JUMPDEST
PUSH2 0x328
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x1e
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x5472616e7366657248656c7065723a20415050524f56455f4641494c45440000
PUSH1 0x44
DUP3
ADD
MSTORE
SWAP1
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x64
ADD
SWAP1
REVERT
JUMPDEST
PUSH1 0x40
DUP1
MLOAD
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
DUP6
DUP2
AND
PUSH1 0x24
DUP4
ADD
MSTORE
DUP5
DUP2
AND
PUSH1 0x44
DUP4
ADD
MSTORE
PUSH1 0x64
DUP1
DUP4
ADD
DUP6
SWAP1
MSTORE
DUP4
MLOAD
DUP1
DUP5
SUB
SWAP1
SWAP2
ADD
DUP2
MSTORE
PUSH1 0x84
SWAP1
SWAP3
ADD
DUP4
MSTORE
PUSH1 0x20
DUP3
ADD
DUP1
MLOAD
PUSH28 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
AND
PUSH32 0x23b872dd00000000000000000000000000000000000000000000000000000000
OR
DUP2
MSTORE
SWAP3
MLOAD
DUP3
MLOAD
PUSH1 0x0
SWAP5
PUSH1 0x60
SWAP5
SWAP4
DUP11
AND
SWAP4
SWAP3
SWAP2
DUP3
SWAP2
SWAP1
DUP1
DUP4
DUP4
JUMPDEST
PUSH1 0x20
DUP4
LT
PUSH2 0x926
JUMPI
DUP1
MLOAD
DUP3
MSTORE
PUSH32 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0
SWAP1
SWAP3
ADD
SWAP2
PUSH1 0x20
SWAP2
DUP3
ADD
SWAP2
ADD
PUSH2 0x8e9
JUMP
JUMPDEST
PUSH1 0x1
DUP4
PUSH1 0x20
SUB
PUSH2 0x100
EXP
SUB
DUP1
NOT
DUP3
MLOAD
AND
DUP2
DUP5
MLOAD
AND
DUP1
DUP3
OR
DUP6
MSTORE
POP
POP
POP
POP
POP
POP
SWAP1
POP
ADD
SWAP2
POP
POP
PUSH1 0x0
PUSH1 0x40
MLOAD
DUP1
DUP4
SUB
DUP2
PUSH1 0x0
DUP7
GAS
CALL
SWAP2
POP
POP
RETURNDATASIZE
DUP1
PUSH1 0x0
DUP2
EQ
PUSH2 0x988
JUMPI
PUSH1 0x40
MLOAD
SWAP2
POP
PUSH1 0x1f
NOT
PUSH1 0x3f
RETURNDATASIZE
ADD
AND
DUP3
ADD
PUSH1 0x40
MSTORE
RETURNDATASIZE
DUP3
MSTORE
RETURNDATASIZE
PUSH1 0x0
PUSH1 0x20
DUP5
ADD
RETURNDATACOPY
PUSH2 0x98d
JUMP
JUMPDEST
PUSH1 0x60
SWAP2
POP
JUMPDEST
POP
SWAP2
POP
SWAP2
POP
DUP2
DUP1
ISZERO
PUSH2 0x9bb
JUMPI
POP
DUP1
MLOAD
ISZERO
DUP1
PUSH2 0x9bb
JUMPI
POP
DUP1
DUP1
PUSH1 0x20
ADD
SWAP1
MLOAD
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0x9b8
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
MLOAD
JUMPDEST
PUSH2 0x669
JUMPI
PUSH1 0x40
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x4
ADD
DUP1
DUP1
PUSH1 0x20
ADD
DUP3
DUP2
SUB
DUP3
MSTORE
PUSH1 0x24
DUP2
MSTORE
PUSH1 0x20
ADD
DUP1
PUSH2 0x141f
PUSH1 0x24
SWAP2
CODECOPY
PUSH1 0x40
ADD
SWAP2
POP
POP
PUSH1 0x40
MLOAD
DUP1
SWAP2
SUB
SWAP1
REVERT
JUMPDEST
PUSH1 0x18
DUP2
SWAP1
MSTORE
PUSH1 0x0
DUP1
MLOAD
PUSH1 0x10
DUP4
SWAP1
MSTORE
DUP2
MLOAD
PUSH1 0x8
SWAP4
SWAP1
SWAP4
MSTORE
SWAP1
MLOAD
PUSH1 0x20
MLOAD
SWAP2
SWAP4
SWAP1
SWAP2
SWAP1
JUMP
JUMPDEST
PUSH1 0x60
PUSH2 0xa49
DUP4
DUP7
PUSH8 0xffffffffffffffff
AND
DUP7
PUSH2 0xef0
JUMP
JUMPDEST
SWAP1
POP
DUP7
PUSH8 0xffffffffffffffff
AND
DUP2
PUSH1 0x1
DUP4
MLOAD
SUB
DUP2
MLOAD
DUP2
LT
PUSH2 0xa66
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
LT
PUSH2 0xee7
JUMPI
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
PUSH4 0xa9059cbb
DUP5
PUSH1 0x0
DUP2
MLOAD
DUP2
LT
PUSH2 0xab0
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
DUP8
PUSH1 0x40
MLOAD
DUP4
PUSH4 0xffffffff
AND
PUSH1 0xe0
SHL
DUP2
MSTORE
PUSH1 0x4
ADD
DUP1
DUP4
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
DUP2
MSTORE
PUSH1 0x20
ADD
DUP3
PUSH8 0xffffffffffffffff
AND
DUP2
MSTORE
PUSH1 0x20
ADD
SWAP3
POP
POP
POP
PUSH1 0x20
PUSH1 0x40
MLOAD
DUP1
DUP4
SUB
DUP2
PUSH1 0x0
DUP8
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0xb2c
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
CALL
ISZERO
DUP1
ISZERO
PUSH2 0xb40
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
POP
POP
PUSH1 0x40
MLOAD
RETURNDATASIZE
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0xb56
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH1 0x1
SWAP1
POP
JUMPDEST
DUP5
MLOAD
DUP2
LT
ISZERO
PUSH2 0xd44
JUMPI
PUSH1 0x0
DUP1
DUP5
DUP4
PUSH1 0x8
DUP2
LT
PUSH2 0xb74
JUMPI
INVALID
JUMPDEST
BYTE
PUSH1 0xf8
SHL
PUSH31 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
NOT
AND
PUSH1 0x1
PUSH1 0xf8
SHL
EQ
PUSH2 0xbbf
JUMPI
DUP4
DUP4
DUP2
MLOAD
DUP2
LT
PUSH2 0xbb0
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
PUSH1 0x0
PUSH2 0xbd6
JUMP
JUMPDEST
PUSH1 0x0
DUP5
DUP5
DUP2
MLOAD
DUP2
LT
PUSH2 0xbcd
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
JUMPDEST
SWAP2
POP
SWAP2
POP
DUP6
PUSH1 0x1
DUP5
SUB
DUP2
MLOAD
DUP2
LT
PUSH2 0xbe9
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
PUSH4 0x22c0d9f
DUP4
DUP4
PUSH1 0x1
DUP12
MLOAD
SUB
DUP8
LT
PUSH2 0xc1f
JUMPI
ADDRESS
PUSH2 0xc34
JUMP
JUMPDEST
DUP10
DUP8
DUP2
MLOAD
DUP2
LT
PUSH2 0xc2b
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
JUMPDEST
PUSH1 0x40
DUP1
MLOAD
PUSH1 0x0
DUP1
DUP3
MSTORE
PUSH1 0x20
DUP3
ADD
SWAP1
SWAP3
MSTORE
SWAP1
POP
PUSH1 0x40
MLOAD
DUP6
PUSH4 0xffffffff
AND
PUSH1 0xe0
SHL
DUP2
MSTORE
PUSH1 0x4
ADD
DUP1
DUP6
DUP2
MSTORE
PUSH1 0x20
ADD
DUP5
DUP2
MSTORE
PUSH1 0x20
ADD
DUP4
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
DUP2
MSTORE
PUSH1 0x20
ADD
DUP1
PUSH1 0x20
ADD
DUP3
DUP2
SUB
DUP3
MSTORE
DUP4
DUP2
DUP2
MLOAD
DUP2
MSTORE
PUSH1 0x20
ADD
SWAP2
POP
DUP1
MLOAD
SWAP1
PUSH1 0x20
ADD
SWAP1
DUP1
DUP4
DUP4
PUSH1 0x0
JUMPDEST
DUP4
DUP2
LT
ISZERO
PUSH2 0xcd0
JUMPI
DUP2
DUP2
ADD
MLOAD
DUP4
DUP3
ADD
MSTORE
PUSH1 0x20
ADD
PUSH2 0xcb8
JUMP
JUMPDEST
POP
POP
POP
POP
SWAP1
POP
SWAP1
DUP2
ADD
SWAP1
PUSH1 0x1f
AND
DUP1
ISZERO
PUSH2 0xcfd
JUMPI
DUP1
DUP3
SUB
DUP1
MLOAD
PUSH1 0x1
DUP4
PUSH1 0x20
SUB
PUSH2 0x100
EXP
SUB
NOT
AND
DUP2
MSTORE
PUSH1 0x20
ADD
SWAP2
POP
JUMPDEST
POP
SWAP6
POP
POP
POP
POP
POP
POP
PUSH1 0x0
PUSH1 0x40
MLOAD
DUP1
DUP4
SUB
DUP2
PUSH1 0x0
DUP8
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0xd1f
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
CALL
ISZERO
DUP1
ISZERO
PUSH2 0xd33
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
POP
POP
POP
POP
DUP1
PUSH1 0x1
ADD
SWAP1
POP
PUSH2 0xb5c
JUMP
JUMPDEST
POP
PUSH32 0x100000000000000000000000000000000000000000000000000000000000000
PUSH32 0xff00000000000000000000000000000000000000000000000000000000000000
PUSH1 0x7
DUP5
SWAP1
BYTE
PUSH1 0xf8
SHL
AND
EQ
ISZERO
PUSH2 0xdd2
JUMPI
PUSH1 0x40
MLOAD
COINBASE
SWAP1
PUSH8 0xffffffffffffffff
DUP9
AND
DUP1
ISZERO
PUSH2 0x8fc
MUL
SWAP2
PUSH1 0x0
DUP2
DUP2
DUP2
DUP6
DUP9
DUP9
CALL
SWAP4
POP
POP
POP
POP
ISZERO
DUP1
ISZERO
PUSH2 0xdcc
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
PUSH2 0xee7
JUMP
JUMPDEST
PUSH32 0x200000000000000000000000000000000000000000000000000000000000000
PUSH32 0xff00000000000000000000000000000000000000000000000000000000000000
PUSH1 0x7
DUP5
SWAP1
BYTE
PUSH1 0xf8
SHL
AND
EQ
ISZERO
PUSH2 0xee7
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH8 0x16345785d8a0000
PUSH1 0x4
DUP3
ADD
MSTORE
SWAP1
MLOAD
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
SWAP2
PUSH4 0x2e1a7d4d
SWAP2
PUSH1 0x24
DUP1
DUP4
ADD
SWAP3
PUSH1 0x0
SWAP3
SWAP2
SWAP1
DUP3
SWAP1
SUB
ADD
DUP2
DUP4
DUP8
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0xe96
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
CALL
ISZERO
DUP1
ISZERO
PUSH2 0xeaa
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
PUSH1 0x40
MLOAD
COINBASE
SWAP3
POP
PUSH8 0xffffffffffffffff
DUP10
AND
DUP1
ISZERO
PUSH2 0x8fc
MUL
SWAP3
POP
SWAP1
PUSH1 0x0
DUP2
DUP2
DUP2
DUP6
DUP9
DUP9
CALL
SWAP4
POP
POP
POP
POP
ISZERO
DUP1
ISZERO
PUSH2 0xee5
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
JUMPDEST
POP
POP
POP
POP
POP
POP
POP
JUMP
JUMPDEST
PUSH1 0x60
PUSH1 0x2
DUP3
MLOAD
LT
ISZERO
PUSH2 0xf63
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x1e
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x556e697377617056324c6962726172793a20494e56414c49445f504154480000
PUSH1 0x44
DUP3
ADD
MSTORE
SWAP1
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x64
ADD
SWAP1
REVERT
JUMPDEST
DUP2
MLOAD
PUSH1 0x40
MLOAD
SWAP1
DUP1
DUP3
MSTORE
DUP1
PUSH1 0x20
MUL
PUSH1 0x20
ADD
DUP3
ADD
PUSH1 0x40
MSTORE
DUP1
ISZERO
PUSH2 0xf8e
JUMPI
DUP2
PUSH1 0x20
ADD
PUSH1 0x20
DUP3
MUL
DUP1
CODESIZE
DUP4
CODECOPY
ADD
SWAP1
POP
JUMPDEST
POP
SWAP1
POP
DUP3
DUP2
PUSH1 0x0
DUP2
MLOAD
DUP2
LT
PUSH2 0xf9f
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
SWAP1
DUP2
MUL
SWAP2
SWAP1
SWAP2
ADD
ADD
MSTORE
PUSH1 0x0
JUMPDEST
PUSH1 0x1
DUP4
MLOAD
SUB
DUP2
LT
ISZERO
PUSH2 0x1049
JUMPI
PUSH1 0x0
DUP1
PUSH2 0x1003
DUP8
DUP5
DUP2
MLOAD
DUP2
LT
PUSH2 0xfcb
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
DUP7
DUP6
DUP2
MLOAD
DUP2
LT
PUSH2 0xfdf
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
DUP8
DUP7
PUSH1 0x1
ADD
DUP2
MLOAD
DUP2
LT
PUSH2 0xff6
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
PUSH2 0x1051
JUMP
JUMPDEST
SWAP2
POP
SWAP2
POP
PUSH2 0x1025
DUP5
DUP5
DUP2
MLOAD
DUP2
LT
PUSH2 0x1016
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
DUP4
DUP4
PUSH2 0x112f
JUMP
JUMPDEST
DUP5
DUP5
PUSH1 0x1
ADD
DUP2
MLOAD
DUP2
LT
PUSH2 0x1034
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
SWAP1
DUP2
MUL
SWAP2
SWAP1
SWAP2
ADD
ADD
MSTORE
POP
POP
PUSH1 0x1
ADD
PUSH2 0xfad
JUMP
JUMPDEST
POP
SWAP4
SWAP3
POP
POP
POP
JUMP
JUMPDEST
PUSH1 0x0
DUP1
PUSH1 0x0
PUSH2 0x1060
DUP6
DUP6
PUSH2 0x1195
JUMP
JUMPDEST
POP
SWAP1
POP
PUSH1 0x0
DUP1
DUP8
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
PUSH4 0x902f1ac
PUSH1 0x40
MLOAD
DUP2
PUSH4 0xffffffff
AND
PUSH1 0xe0
SHL
DUP2
MSTORE
PUSH1 0x4
ADD
PUSH1 0x60
PUSH1 0x40
MLOAD
DUP1
DUP4
SUB
DUP2
DUP7
DUP1
EXTCODESIZE
ISZERO
DUP1
ISZERO
PUSH2 0x10ac
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
GAS
STATICCALL
ISZERO
DUP1
ISZERO
PUSH2 0x10c0
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
POP
POP
POP
POP
PUSH1 0x40
MLOAD
RETURNDATASIZE
PUSH1 0x60
DUP2
LT
ISZERO
PUSH2 0x10d6
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
DUP1
MLOAD
PUSH1 0x20
SWAP1
SWAP2
ADD
MLOAD
PUSH14 0xffffffffffffffffffffffffffff
SWAP2
DUP3
AND
SWAP4
POP
AND
SWAP1
POP
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
DUP8
DUP2
AND
SWAP1
DUP5
AND
EQ
PUSH2 0x111d
JUMPI
DUP1
DUP3
PUSH2 0x1120
JUMP
JUMPDEST
DUP2
DUP2
JUMPDEST
SWAP1
SWAP10
SWAP1
SWAP9
POP
SWAP7
POP
POP
POP
POP
POP
POP
POP
JUMP
JUMPDEST
PUSH1 0x0
DUP1
PUSH2 0x1144
DUP6
PUSH2 0x3e5
PUSH4 0xffffffff
PUSH2 0x12e8
AND
JUMP
JUMPDEST
SWAP1
POP
PUSH1 0x0
PUSH2 0x1158
DUP3
DUP6
PUSH4 0xffffffff
PUSH2 0x12e8
AND
JUMP
JUMPDEST
SWAP1
POP
PUSH1 0x0
PUSH2 0x117e
DUP4
PUSH2 0x1172
DUP9
PUSH2 0x3e8
PUSH4 0xffffffff
PUSH2 0x12e8
AND
JUMP
JUMPDEST
SWAP1
PUSH4 0xffffffff
PUSH2 0x1364
AND
JUMP
JUMPDEST
SWAP1
POP
DUP1
DUP3
DUP2
PUSH2 0x1189
JUMPI
INVALID
JUMPDEST
DIV
SWAP8
SWAP7
POP
POP
POP
POP
POP
POP
POP
JUMP
JUMPDEST
PUSH1 0x0
DUP1
DUP3
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
DUP5
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
EQ
ISZERO
PUSH2 0x121d
JUMPI
PUSH1 0x40
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x4
ADD
DUP1
DUP1
PUSH1 0x20
ADD
DUP3
DUP2
SUB
DUP3
MSTORE
PUSH1 0x25
DUP2
MSTORE
PUSH1 0x20
ADD
DUP1
PUSH2 0x13d9
PUSH1 0x25
SWAP2
CODECOPY
PUSH1 0x40
ADD
SWAP2
POP
POP
PUSH1 0x40
MLOAD
DUP1
SWAP2
SUB
SWAP1
REVERT
JUMPDEST
DUP3
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
DUP5
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
AND
LT
PUSH2 0x1257
JUMPI
DUP3
DUP5
PUSH2 0x125a
JUMP
JUMPDEST
DUP4
DUP4
JUMPDEST
SWAP1
SWAP3
POP
SWAP1
POP
PUSH20 0xffffffffffffffffffffffffffffffffffffffff
DUP3
AND
PUSH2 0x12e1
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x1e
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x556e697377617056324c6962726172793a205a45524f5f414444524553530000
PUSH1 0x44
DUP3
ADD
MSTORE
SWAP1
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x64
ADD
SWAP1
REVERT
JUMPDEST
SWAP3
POP
SWAP3
SWAP1
POP
JUMP
JUMPDEST
PUSH1 0x0
DUP3
PUSH2 0x12f7
JUMPI
POP
PUSH1 0x0
PUSH2 0x135e
JUMP
JUMPDEST
DUP3
DUP3
MUL
DUP3
DUP5
DUP3
DUP2
PUSH2 0x1304
JUMPI
INVALID
JUMPDEST
DIV
EQ
PUSH2 0x135b
JUMPI
PUSH1 0x40
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x4
ADD
DUP1
DUP1
PUSH1 0x20
ADD
DUP3
DUP2
SUB
DUP3
MSTORE
PUSH1 0x21
DUP2
MSTORE
PUSH1 0x20
ADD
DUP1
PUSH2 0x13fe
PUSH1 0x21
SWAP2
CODECOPY
PUSH1 0x40
ADD
SWAP2
POP
POP
PUSH1 0x40
MLOAD
DUP1
SWAP2
SUB
SWAP1
REVERT
JUMPDEST
SWAP1
POP
JUMPDEST
SWAP3
SWAP2
POP
POP
JUMP
JUMPDEST
PUSH1 0x0
DUP3
DUP3
ADD
DUP4
DUP2
LT
ISZERO
PUSH2 0x135b
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0x1b
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x536166654d6174683a206164646974696f6e206f766572666c6f770000000000
PUSH1 0x44
DUP3
ADD
MSTORE
SWAP1
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x64
ADD
SWAP1
REVERT
INVALID
SSTORE
PUSH15 0x697377617056324c6962726172793a
SHA3
INVALID
DIFFICULTY
GASLIMIT
INVALID
SLOAD
INVALID
NUMBER
COINBASE
INVALID
INVALID
COINBASE
DIFFICULTY
DIFFICULTY
MSTORE
GASLIMIT
MSTORE8
MSTORE8
GASLIMIT
MSTORE8
MSTORE8
PUSH2 0x6665
INVALID
PUSH2 0x7468
GASPRICE
SHA3
PUSH14 0x756c7469706c69636174696f6e20
PUSH16 0x766572666c6f775472616e7366657248
PUSH6 0x6c7065723a20
SLOAD
MSTORE
COINBASE
INVALID
MSTORE8
CHAINID
GASLIMIT
MSTORE
INVALID
CHAINID
MSTORE
INVALID
INVALID
INVALID
CHAINID
COINBASE
INVALID
INVALID
GASLIMIT
DIFFICULTY
LOG2
PUSH5 0x6970667358
INVALID
SLT
SHA3
INVALID
INVALID
INVALID
INVALID
INVALID
MSTORE8
PUSH8 0x42d17055655f9658
SWAP10
INVALID
SWAP7
DIFFICULTY
INVALID
PUSH14 0xfd28ad1416c9cf676ee53564736f