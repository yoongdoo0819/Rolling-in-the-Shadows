PUSH1 0x80
PUSH1 0x40
MSTORE
CALLVALUE
DUP1
ISZERO
PUSH2 0x10
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
POP
PUSH1 0x4
CALLDATASIZE
LT
PUSH2 0x2b
JUMPI
PUSH1 0x0
CALLDATALOAD
PUSH1 0xe0
SHR
DUP1
PUSH4 0x8119c065
EQ
PUSH2 0x30
JUMPI
JUMPDEST
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH2 0x38
PUSH2 0x3a
JUMP
JUMPDEST
STOP
JUMPDEST
PUSH1 0x14
PUSH2 0x4d
PUSH1 0x40
DUP1
MLOAD
PUSH1 0x64
DUP2
ADD
SWAP1
SWAP2
MSTORE
SWAP1
JUMP
JUMPDEST
PUSH4 0x23b872dd
PUSH1 0xe0
SHL
DUP2
MSTORE
ORIGIN
PUSH1 0x4
DUP3
ADD
MSTORE
DUP2
DUP1
PUSH1 0x30
DUP4
ADD
CALLDATACOPY
PUSH1 0x10
DUP1
PUSH1 0x4
PUSH1 0x54
DUP5
ADD
CALLDATACOPY
PUSH1 0x20
PUSH1 0x64
PUSH1 0x0
DUP3
DUP6
DUP4
DUP8
DUP5
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
PUSH3 0x186a0
CALL
PUSH2 0x9b
JUMPI
DUP1
DUP2
REVERT
JUMPDEST
DUP1
SWAP5
POP
JUMPDEST
DUP5
PUSH2 0x163
JUMPI
PUSH1 0x25
DUP7
ADD
CALLDATASIZE
DUP2
EQ
SWAP6
POP
PUSH2 0xbe
PUSH1 0x40
DUP1
MLOAD
PUSH1 0xa4
DUP2
ADD
SWAP1
SWAP2
MSTORE
SWAP1
JUMP
JUMPDEST
PUSH4 0x22c0d9f
PUSH1 0xe0
SHL
DUP2
MSTORE
PUSH1 0x40
DUP1
MLOAD
PUSH1 0x1
DUP2
ADD
SWAP1
SWAP2
MSTORE
PUSH1 0x1
PUSH1 0x24
DUP11
ADD
DUP3
CALLDATACOPY
DUP1
MLOAD
DUP1
ISZERO
PUSH2 0xf2
JUMPI
DUP8
PUSH1 0x14
DUP12
ADD
PUSH1 0x34
DUP6
ADD
CALLDATACOPY
PUSH2 0xfd
JUMP
JUMPDEST
DUP8
PUSH1 0x14
DUP12
ADD
PUSH1 0x14
DUP6
ADD
CALLDATACOPY
JUMPDEST
POP
POP
DUP7
PUSH1 0x0
DUP2
EQ
PUSH2 0x115
JUMPI
PUSH1 0x1
DUP2
EQ
PUSH2 0x122
JUMPI
PUSH2 0x129
JUMP
JUMPDEST
PUSH1 0x14
DUP4
PUSH1 0x50
DUP5
ADD
CALLDATACOPY
PUSH2 0x129
JUMP
JUMPDEST
ORIGIN
PUSH1 0x44
DUP4
ADD
MSTORE
JUMPDEST
POP
PUSH1 0x80
DUP2
DUP6
ADD
MSTORE
PUSH1 0x40
DUP1
MLOAD
PUSH1 0x20
DUP2
ADD
SWAP1
SWAP2
MSTORE
PUSH1 0x14
DUP10
PUSH1 0xc
DUP4
ADD
CALLDATACOPY
DUP6
DUP3
PUSH1 0xa4
DUP5
DUP8
DUP6
MLOAD
PUSH3 0x7a120
CALL
PUSH2 0x158
JUMPI
DUP4
DUP5
REVERT
JUMPDEST
POP
POP
DUP1
SWAP7
POP
POP
PUSH2 0x9f
JUMP
JUMPDEST
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
LOG4
DUP8
INVALID
INVALID
INVALID
INVALID
PUSH10 0x33b158623eed820b285a
INVALID