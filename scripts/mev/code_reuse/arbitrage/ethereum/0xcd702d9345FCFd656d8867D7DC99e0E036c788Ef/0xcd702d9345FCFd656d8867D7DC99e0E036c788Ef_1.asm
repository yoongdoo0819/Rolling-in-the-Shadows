PUSH1 0x80
PUSH1 0x40
MSTORE
PUSH1 0x4
CALLDATASIZE
LT
PUSH2 0x22
JUMPI
PUSH1 0x0
CALLDATALOAD
PUSH1 0xe0
SHR
DUP1
PUSH4 0x68cb0b42
EQ
PUSH2 0x2e
JUMPI
PUSH2 0x29
JUMP
JUMPDEST
CALLDATASIZE
PUSH2 0x29
JUMPI
STOP
JUMPDEST
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH2 0x15c
PUSH1 0x4
DUP1
CALLDATASIZE
SUB
PUSH1 0xe0
DUP2
LT
ISZERO
PUSH2 0x44
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
PUSH2 0x72
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
PUSH2 0x84
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
PUSH2 0xa6
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
SWAP2
SWAP4
SWAP1
SWAP3
PUSH1 0xff
DUP4
CALLDATALOAD
AND
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
PUSH2 0xcb
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
PUSH2 0xdd
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
PUSH2 0xff
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
SWAP2
SWAP4
SWAP1
SWAP3
SWAP1
SWAP2
PUSH1 0x20
DUP2
ADD
SWAP1
CALLDATALOAD
PUSH5 0x100000000
DUP2
GT
ISZERO
PUSH2 0x11d
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
PUSH2 0x12f
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
PUSH2 0x151
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
PUSH2 0x15e
JUMP
JUMPDEST
STOP
JUMPDEST
CALLER
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
PUSH32 0x4910f2cecdab9da69685e7c16cdacf484bb5065a
AND
EQ
PUSH2 0x1db
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
DUP2
SWAP1
MSTORE
PUSH1 0x24
DUP3
ADD
MSTORE
PUSH32 0x4f6e6c79206f776e65722063616e2063616c6c2074686520636f6e7472616374
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
PUSH20 0x40c4a6dcf0ef8e9a55c7c9e7b97df132e4894ee7
PUSH1 0x1
PUSH1 0x1
PUSH1 0xa0
SHL
SUB
AND
PUSH4 0x68cb0b42
DUP12
DUP12
DUP12
DUP12
DUP12
DUP12
DUP12
DUP12
DUP12
DUP12
PUSH1 0x40
MLOAD
DUP12
PUSH4 0xffffffff
AND
PUSH1 0xe0
SHL
DUP2
MSTORE
PUSH1 0x4
ADD
DUP1
DUP12
DUP2
MSTORE
PUSH1 0x20
ADD
DUP11
DUP2
MSTORE
PUSH1 0x20
ADD
DUP10
DUP2
MSTORE
PUSH1 0x20
ADD
DUP1
PUSH1 0x20
ADD
DUP8
PUSH1 0xff
AND
PUSH1 0xff
AND
DUP2
MSTORE
PUSH1 0x20
ADD
DUP1
PUSH1 0x20
ADD
DUP1
PUSH1 0x20
ADD
DUP5
DUP2
SUB
DUP5
MSTORE
DUP12
DUP12
DUP3
DUP2
DUP2
MSTORE
PUSH1 0x20
ADD
SWAP3
POP
DUP1
DUP3
DUP5
CALLDATACOPY
PUSH1 0x0
DUP4
DUP3
ADD
MSTORE
PUSH1 0x1f
ADD
PUSH1 0x1f
NOT
AND
SWAP1
SWAP2
ADD
DUP6
DUP2
SUB
DUP5
MSTORE
DUP9
DUP2
MSTORE
PUSH1 0x20
SWAP1
DUP2
ADD
SWAP2
POP
DUP10
SWAP1
DUP10
MUL
DUP1
DUP3
DUP5
CALLDATACOPY
PUSH1 0x0
DUP4
DUP3
ADD
MSTORE
PUSH1 0x1f
ADD
PUSH1 0x1f
NOT
AND
SWAP1
SWAP2
ADD
DUP6
DUP2
SUB
DUP4
MSTORE
DUP7
DUP2
MSTORE
PUSH1 0x20
SWAP1
DUP2
ADD
SWAP2
POP
DUP8
SWAP1
DUP8
MUL
DUP1
DUP3
DUP5
CALLDATACOPY
PUSH1 0x0
DUP2
DUP5
ADD
MSTORE
PUSH1 0x1f
NOT
PUSH1 0x1f
DUP3
ADD
AND
SWAP1
POP
DUP1
DUP4
ADD
SWAP3
POP
POP
POP
SWAP14
POP
POP
POP
POP
POP
POP
POP
POP
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
PUSH2 0x2e7
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
PUSH2 0x2fb
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
PUSH1 0xff
DUP6
AND
ISZERO
PUSH2 0x38a
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
DUP8
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
PUSH2 0x35d
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
PUSH2 0x371
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
PUSH2 0x387
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
POP
POP
JUMP
INVALID
LOG2
PUSH5 0x6970667358
INVALID
SLT
SHA3
INVALID
INVALID
POP
INVALID
INVALID
INVALID
INVALID
INVALID
SELFBALANCE
GASLIMIT
PUSH13 0x6fe5cad2f093b6d8a2abb61ca0
INVALID
INVALID
INVALID