PUSH1 0x80
PUSH1 0x40
MSTORE
PUSH1 0x4
CALLDATASIZE
LT
PUSH2 0x74
JUMPI
PUSH1 0x0
CALLDATALOAD
PUSH1 0xe0
SHR
DUP1
PUSH4 0x9b19251a
GT
PUSH2 0x4e
JUMPI
DUP1
PUSH4 0x9b19251a
EQ
PUSH2 0x29f
JUMPI
DUP1
PUSH4 0xa064eb2b
EQ
PUSH2 0x2e6
JUMPI
DUP1
PUSH4 0xa80c33c3
EQ
PUSH2 0x319
JUMPI
DUP1
PUSH4 0xcf4dc438
EQ
PUSH2 0x32e
JUMPI
PUSH2 0x7b
JUMP
JUMPDEST
DUP1
PUSH4 0x2eacd05d
EQ
PUSH2 0x80
JUMPI
DUP1
PUSH4 0x308d2c9d
EQ
PUSH2 0xb6
JUMPI
DUP1
PUSH4 0x68cb0b42
EQ
PUSH2 0xd3
JUMPI
PUSH2 0x7b
JUMP
JUMPDEST
CALLDATASIZE
PUSH2 0x7b
JUMPI
STOP
JUMPDEST
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH2 0xb4
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x60
DUP2
LT
ISZERO
PUSH2 0x96
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
PUSH1 0x20
DUP3
ADD
CALLDATALOAD
AND
SWAP1
PUSH1 0x40
ADD
CALLDATALOAD
PUSH2 0x360
JUMP
JUMPDEST
STOP
JUMPDEST
PUSH2 0xb4
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0xcc
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
CALLDATALOAD
PUSH2 0x4ba
JUMP
JUMPDEST
PUSH2 0xb4
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0xe0
DUP2
LT
ISZERO
PUSH2 0xe9
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
DUP2
CALLDATALOAD
SWAP2
PUSH1 0x20
DUP2
ADD
CALLDATALOAD
SWAP2
PUSH1 0x40
DUP3
ADD
CALLDATALOAD
SWAP2
SWAP1
DUP2
ADD
SWAP1
PUSH1 0x80
DUP2
ADD
PUSH1 0x60
DUP3
ADD
CALLDATALOAD
PUSH5 0x100000000
DUP2
GT
ISZERO
PUSH2 0x117
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
PUSH2 0x129
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
PUSH1 0x1
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
PUSH2 0x14b
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
SWAP2
SWAP1
DUP1
DUP1
PUSH1 0x1f
ADD
PUSH1 0x20
DUP1
SWAP2
DIV
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
SWAP3
SWAP6
PUSH1 0xff
DUP6
CALLDATALOAD
AND
SWAP6
SWAP1
SWAP5
SWAP1
SWAP4
POP
PUSH1 0x40
DUP2
ADD
SWAP3
POP
PUSH1 0x20
ADD
CALLDATALOAD
SWAP1
POP
PUSH5 0x100000000
DUP2
GT
ISZERO
PUSH2 0x1a9
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
PUSH2 0x1bb
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
PUSH2 0x1dd
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
SWAP2
SWAP1
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
SWAP3
SWAP6
SWAP5
SWAP4
PUSH1 0x20
DUP2
ADD
SWAP4
POP
CALLDATALOAD
SWAP2
POP
POP
PUSH5 0x100000000
DUP2
GT
ISZERO
PUSH2 0x22d
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
PUSH2 0x23f
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
PUSH2 0x261
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
SWAP2
SWAP1
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
SWAP3
SWAP6
POP
PUSH2 0x5b2
SWAP5
POP
POP
POP
POP
POP
JUMP
JUMPDEST
CALLVALUE
DUP1
ISZERO
PUSH2 0x2ab
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH2 0x2d2
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0x2c2
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
CALLDATALOAD
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
PUSH2 0xa30
JUMP
JUMPDEST
PUSH1 0x40
DUP1
MLOAD
SWAP2
ISZERO
ISZERO
DUP3
MSTORE
MLOAD
SWAP1
DUP2
SWAP1
SUB
PUSH1 0x20
ADD
SWAP1
RETURN
JUMPDEST
CALLVALUE
DUP1
ISZERO
PUSH2 0x2f2
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH2 0xb4
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x20
DUP2
LT
ISZERO
PUSH2 0x309
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
CALLDATALOAD
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
PUSH2 0xa45
JUMP
JUMPDEST
CALLVALUE
DUP1
ISZERO
PUSH2 0x325
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH2 0xb4
PUSH2 0xabe
JUMP
JUMPDEST
CALLVALUE
DUP1
ISZERO
PUSH2 0x33a
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH2 0xb4
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0x40
DUP2
LT
ISZERO
PUSH2 0x351
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
PUSH2 0xb16
JUMP
JUMPDEST
CALLER
PUSH1 0x0
SWAP1
DUP2
MSTORE
PUSH1 0x20
DUP2
SWAP1
MSTORE
PUSH1 0x40
SWAP1
SHA3
SLOAD
PUSH1 0xff
AND
PUSH2 0x3b5
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0xe
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH14 0x4f6e6c79206f776e657220666d6d
PUSH1 0x90
SHL
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
PUSH2 0x3ee
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
PUSH2 0x3e8
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
PUSH2 0x4b5
JUMP
JUMPDEST
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
DUP3
AND
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
EQ
PUSH2 0x42e
JUMPI
PUSH2 0x41d
DUP3
ADDRESS
DUP4
PUSH2 0xcda
JUMP
JUMPDEST
PUSH2 0x429
DUP3
ADDRESS
CALLER
DUP5
PUSH2 0xe3d
JUMP
JUMPDEST
PUSH2 0x4b5
JUMP
JUMPDEST
PUSH1 0x40
DUP1
MLOAD
PUSH4 0xa9059cbb
PUSH1 0xe0
SHL
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
PUSH2 0x488
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
PUSH2 0x49c
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
PUSH2 0x4b2
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
CALLER
PUSH1 0x0
SWAP1
DUP2
MSTORE
PUSH1 0x20
DUP2
SWAP1
MSTORE
PUSH1 0x40
SWAP1
SHA3
SLOAD
PUSH1 0xff
AND
PUSH2 0x50f
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0xe
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH14 0x4f6e6c79206f776e657220666d6d
PUSH1 0x90
SHL
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
SELFBALANCE
DUP2
DUP2
LT
ISZERO
PUSH2 0x585
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH4 0x2e1a7d4d
PUSH1 0xe0
SHL
DUP2
MSTORE
DUP3
DUP5
SUB
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
PUSH2 0x56c
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
PUSH2 0x580
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
PUSH1 0x40
MLOAD
COINBASE
SWAP1
DUP4
ISZERO
PUSH2 0x8fc
MUL
SWAP1
DUP5
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
PUSH2 0x4b5
JUMPI
RETURNDATASIZE
PUSH1 0x0
DUP1
RETURNDATACOPY
RETURNDATASIZE
PUSH1 0x0
REVERT
JUMPDEST
CALLER
PUSH1 0x0
SWAP1
DUP2
MSTORE
PUSH1 0x20
DUP2
SWAP1
MSTORE
PUSH1 0x40
SWAP1
SHA3
SLOAD
PUSH1 0xff
AND
PUSH2 0x607
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0xe
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH14 0x4f6e6c79206f776e657220666d6d
PUSH1 0x90
SHL
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
PUSH1 0x60
PUSH2 0x614
DUP4
DUP10
DUP5
PUSH2 0xf92
JUMP
JUMPDEST
SWAP1
POP
DUP7
DUP2
PUSH1 0x1
DUP4
MLOAD
SUB
DUP2
MLOAD
DUP2
LT
PUSH2 0x627
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
ISZERO
DUP1
ISZERO
PUSH2 0x655
JUMPI
POP
DUP8
DUP2
PUSH1 0x1
DUP4
MLOAD
SUB
DUP2
MLOAD
DUP2
LT
PUSH2 0x649
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
SUB
DUP7
LT
JUMPDEST
ISZERO
PUSH2 0x99b
JUMPI
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
PUSH4 0xa9059cbb
DUP5
PUSH1 0x0
DUP2
MLOAD
DUP2
LT
PUSH2 0x68a
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
DUP11
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
DUP2
MSTORE
PUSH1 0x20
ADD
DUP3
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
PUSH2 0x6d9
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
PUSH2 0x6ed
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
PUSH2 0x703
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
DUP3
MLOAD
DUP2
PUSH1 0xff
AND
LT
ISZERO
PUSH2 0x8ee
JUMPI
PUSH1 0x0
DUP1
DUP8
DUP4
PUSH1 0xff
AND
DUP2
MLOAD
DUP2
LT
PUSH2 0x727
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
SWAP2
ADD
ADD
MLOAD
PUSH1 0xf8
SHR
PUSH1 0x1
EQ
PUSH2 0x755
JUMPI
DUP4
DUP4
PUSH1 0xff
AND
DUP2
MLOAD
DUP2
LT
PUSH2 0x746
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
PUSH2 0x76f
JUMP
JUMPDEST
PUSH1 0x0
DUP5
DUP5
PUSH1 0xff
AND
DUP2
MLOAD
DUP2
LT
PUSH2 0x766
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
PUSH1 0x0
PUSH1 0x1
DUP7
MLOAD
SUB
DUP5
PUSH1 0xff
AND
LT
PUSH2 0x789
JUMPI
ADDRESS
PUSH2 0x7a1
JUMP
JUMPDEST
DUP7
DUP5
PUSH1 0xff
AND
DUP2
MLOAD
DUP2
LT
PUSH2 0x798
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
SWAP1
POP
DUP7
PUSH1 0x1
DUP6
SUB
PUSH1 0xff
AND
DUP2
MLOAD
DUP2
LT
PUSH2 0x7b5
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
PUSH4 0x22c0d9f
DUP5
DUP5
DUP5
PUSH1 0x0
PUSH8 0xffffffffffffffff
DUP2
GT
DUP1
ISZERO
PUSH2 0x7e6
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH1 0x40
MLOAD
SWAP1
DUP1
DUP3
MSTORE
DUP1
PUSH1 0x1f
ADD
PUSH1 0x1f
NOT
AND
PUSH1 0x20
ADD
DUP3
ADD
PUSH1 0x40
MSTORE
DUP1
ISZERO
PUSH2 0x811
JUMPI
PUSH1 0x20
DUP3
ADD
DUP2
DUP1
CALLDATASIZE
DUP4
CALLDATACOPY
ADD
SWAP1
POP
JUMPDEST
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
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
PUSH2 0x879
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
PUSH2 0x861
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
PUSH2 0x8a6
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
PUSH2 0x8c8
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
PUSH2 0x8dc
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
POP
DUP1
PUSH1 0x1
ADD
SWAP1
POP
PUSH2 0x709
JUMP
JUMPDEST
POP
DUP6
ISZERO
PUSH2 0x99b
JUMPI
SELFBALANCE
DUP7
DUP2
LT
ISZERO
PUSH2 0x96b
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH4 0x2e1a7d4d
PUSH1 0xe0
SHL
DUP2
MSTORE
DUP3
DUP10
SUB
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
PUSH2 0x952
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
PUSH2 0x966
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
PUSH1 0x40
MLOAD
COINBASE
SWAP1
DUP9
ISZERO
PUSH2 0x8fc
MUL
SWAP1
DUP10
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
PUSH2 0x998
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
JUMPDEST
PUSH1 0xff
DUP5
AND
ISZERO
PUSH2 0xa26
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0xa4645f
PUSH1 0xe6
SHL
DUP2
MSTORE
PUSH1 0xff
DUP7
AND
PUSH1 0x4
DUP3
ADD
MSTORE
CALLER
PUSH1 0x24
DUP3
ADD
MSTORE
SWAP1
MLOAD
PUSH14 0xc1cb11d5c062901f32d06248ce48
SWAP2
PUSH4 0x291917c0
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
PUSH2 0x9f9
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
PUSH2 0xa0d
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
PUSH2 0xa23
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
POP
POP
POP
POP
POP
JUMP
JUMPDEST
PUSH1 0x0
PUSH1 0x20
DUP2
SWAP1
MSTORE
SWAP1
DUP2
MSTORE
PUSH1 0x40
SWAP1
SHA3
SLOAD
PUSH1 0xff
AND
DUP2
JUMP
JUMPDEST
CALLER
PUSH1 0x0
SWAP1
DUP2
MSTORE
PUSH1 0x20
DUP2
SWAP1
MSTORE
PUSH1 0x40
SWAP1
SHA3
SLOAD
PUSH1 0xff
AND
PUSH2 0xa9a
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0xe
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH14 0x4f6e6c79206f776e657220666d6d
PUSH1 0x90
SHL
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
PUSH1 0x0
SWAP1
DUP2
MSTORE
PUSH1 0x20
DUP2
SWAP1
MSTORE
PUSH1 0x40
SWAP1
SHA3
DUP1
SLOAD
PUSH1 0xff
NOT
AND
PUSH1 0x1
OR
SWAP1
SSTORE
JUMP
JUMPDEST
CALLER
PUSH1 0x0
SWAP1
DUP2
MSTORE
PUSH1 0x20
DUP2
SWAP1
MSTORE
PUSH1 0x40
SWAP1
SHA3
SLOAD
PUSH1 0xff
AND
PUSH2 0xb13
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0xe
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH14 0x4f6e6c79206f776e657220666d6d
PUSH1 0x90
SHL
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
CALLER
SELFDESTRUCT
JUMPDEST
CALLER
PUSH1 0x0
SWAP1
DUP2
MSTORE
PUSH1 0x20
DUP2
SWAP1
MSTORE
PUSH1 0x40
SWAP1
SHA3
SLOAD
PUSH1 0xff
AND
PUSH2 0xb6b
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
DUP2
MSTORE
PUSH1 0x20
PUSH1 0x4
DUP3
ADD
MSTORE
PUSH1 0xe
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH14 0x4f6e6c79206f776e657220666d6d
PUSH1 0x90
SHL
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
PUSH2 0xc63
JUMPI
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
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
PUSH2 0xbc0
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
PUSH2 0xbd4
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
PUSH4 0xa9059cbb
PUSH1 0xe0
SHL
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
PUSH2 0xc31
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
PUSH2 0xc45
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
PUSH2 0xc5b
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH2 0xcd6
SWAP1
POP
JUMP
JUMPDEST
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
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
PUSH2 0xcbd
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
PUSH2 0xcd1
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xe0
SHL
SUB
AND
PUSH4 0x95ea7b3
PUSH1 0xe0
SHL
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
PUSH2 0xd57
JUMPI
DUP1
MLOAD
DUP3
MSTORE
PUSH1 0x1f
NOT
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
PUSH2 0xd38
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
PUSH2 0xdb9
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
PUSH2 0xdbe
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
PUSH2 0xdec
JUMPI
POP
DUP1
MLOAD
ISZERO
DUP1
PUSH2 0xdec
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
PUSH2 0xde9
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
MLOAD
JUMPDEST
PUSH2 0x4b2
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xe0
SHL
SUB
AND
PUSH4 0x23b872dd
PUSH1 0xe0
SHL
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
PUSH2 0xec2
JUMPI
DUP1
MLOAD
DUP3
MSTORE
PUSH1 0x1f
NOT
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
PUSH2 0xea3
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
PUSH2 0xf24
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
PUSH2 0xf29
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
PUSH2 0xf57
JUMPI
POP
DUP1
MLOAD
ISZERO
DUP1
PUSH2 0xf57
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
PUSH2 0xf54
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
MLOAD
JUMPDEST
PUSH2 0xcd1
JUMPI
PUSH1 0x40
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
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
PUSH2 0x13e4
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
PUSH1 0x60
PUSH1 0x2
DUP3
MLOAD
LT
ISZERO
PUSH2 0xfeb
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
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
PUSH8 0xffffffffffffffff
DUP2
GT
DUP1
ISZERO
PUSH2 0x1003
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
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
PUSH2 0x102d
JUMPI
DUP2
PUSH1 0x20
ADD
PUSH1 0x20
DUP3
MUL
DUP1
CALLDATASIZE
DUP4
CALLDATACOPY
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
PUSH2 0x103e
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
DUP2
DUP2
MSTORE
POP
POP
PUSH1 0x0
JUMPDEST
PUSH1 0x1
DUP4
MLOAD
SUB
DUP2
LT
ISZERO
PUSH2 0x10e9
JUMPI
PUSH1 0x0
DUP1
PUSH2 0x10a3
DUP8
DUP5
DUP2
MLOAD
DUP2
LT
PUSH2 0x106b
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
PUSH2 0x107f
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
PUSH2 0x1096
JUMPI
INVALID
JUMPDEST
PUSH1 0x20
MUL
PUSH1 0x20
ADD
ADD
MLOAD
PUSH2 0x10f1
JUMP
JUMPDEST
SWAP2
POP
SWAP2
POP
PUSH2 0x10c5
DUP5
DUP5
DUP2
MLOAD
DUP2
LT
PUSH2 0x10b6
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
PUSH2 0x11b5
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
PUSH2 0x10d4
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
PUSH2 0x104d
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
PUSH2 0x1100
DUP6
DUP6
PUSH2 0x1203
JUMP
JUMPDEST
POP
SWAP1
POP
PUSH1 0x0
DUP1
DUP8
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
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
PUSH2 0x113f
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
PUSH2 0x1153
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
PUSH2 0x1169
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
DUP8
DUP2
AND
SWAP1
DUP5
AND
EQ
PUSH2 0x11a3
JUMPI
DUP1
DUP3
PUSH2 0x11a6
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
PUSH2 0x11c4
DUP6
PUSH2 0x3e5
PUSH2 0x12e1
JUMP
JUMPDEST
SWAP1
POP
PUSH1 0x0
PUSH2 0x11d2
DUP3
DUP6
PUSH2 0x12e1
JUMP
JUMPDEST
SWAP1
POP
PUSH1 0x0
PUSH2 0x11ec
DUP4
PUSH2 0x11e6
DUP9
PUSH2 0x3e8
PUSH2 0x12e1
JUMP
JUMPDEST
SWAP1
PUSH2 0x1343
JUMP
JUMPDEST
SWAP1
POP
DUP1
DUP3
DUP2
PUSH2 0x11f7
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
DUP5
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
EQ
ISZERO
PUSH2 0x1257
JUMPI
PUSH1 0x40
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
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
PUSH2 0x139e
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
DUP5
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
LT
PUSH2 0x1277
JUMPI
DUP3
DUP5
PUSH2 0x127a
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
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
DUP3
AND
PUSH2 0x12da
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
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
PUSH2 0x12f0
JUMPI
POP
PUSH1 0x0
PUSH2 0x133d
JUMP
JUMPDEST
DUP3
DUP3
MUL
DUP3
DUP5
DUP3
DUP2
PUSH2 0x12fd
JUMPI
INVALID
JUMPDEST
DIV
EQ
PUSH2 0x133a
JUMPI
PUSH1 0x40
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
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
PUSH2 0x13c3
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
PUSH2 0x133a
JUMPI
PUSH1 0x40
DUP1
MLOAD
PUSH3 0x461bcd
PUSH1 0xe5
SHL
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
SIGNEXTEND
MULMOD
PUSH20 0x475e13c7d5bd0c7adc4b9946289ed53c162a7294