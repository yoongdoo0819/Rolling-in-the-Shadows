PUSH1 0xc4
CALLDATASIZE
SUB
PUSH2 0x109
JUMPI
PUSH32 0x22c0d9f00000000000000000000000000000000000000000000000000000000
PUSH1 0x0
MSTORE
PUSH1 0xb8
CALLDATALOAD
PUSH1 0x1b
MSTORE
ADDRESS
PUSH1 0x44
MSTORE
PUSH1 0x20
PUSH1 0x64
MSTORE
PUSH1 0x0
DUP1
PUSH1 0x84
PUSH1 0x0
DUP1
PUSH1 0xa4
CALLDATALOAD
PUSH1 0x60
SHR
GAS
CALL
DUP1
ISZERO
PUSH2 0x104
JUMPI
PUSH32 0xff1f98431c8ad98523631ae4a59f267346ea31f9840000000000000000000000
PUSH1 0x0
MSTORE
PUSH1 0x84
CALLDATALOAD
PUSH1 0x15
MSTORE
PUSH32 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
PUSH1 0x35
MSTORE
PUSH1 0x55
PUSH1 0x0
SHA3
PUSH1 0x60
SHL
PUSH1 0x60
SHR
CALLER
SUB
ISZERO
PUSH2 0xb5
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH32 0xa9059cbb00000000000000000000000000000000000000000000000000000000
PUSH1 0x0
MSTORE
CALLER
PUSH1 0x4
MSTORE
PUSH1 0x4
CALLDATALOAD
PUSH1 0x24
MSTORE
PUSH1 0x0
DUP1
PUSH1 0x44
PUSH1 0x0
DUP1
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
GAS
CALL
STOP
JUMPDEST
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH20 0x7b71570b01e5d1986a20f97a0db0d309cf685227
CALLER
EQ
CALLVALUE
ISZERO
AND
ISZERO
PUSH2 0x199
JUMPI
PUSH32 0x128acb0800000000000000000000000000000000000000000000000000000000
PUSH1 0x0
MSTORE
PUSH1 0x38
CALLDATALOAD
PUSH1 0x60
SHR
PUSH1 0x4
MSTORE
PUSH1 0x1
PUSH1 0x24
MSTORE
PUSH1 0x4
PUSH1 0x14
PUSH1 0x5b
CALLDATACOPY
PUSH5 0x1000276a4
PUSH1 0x64
MSTORE
PUSH1 0xa0
PUSH1 0x84
MSTORE
PUSH1 0x40
PUSH1 0xa4
MSTORE
PUSH1 0x40
PUSH1 0x18
PUSH1 0xc4
CALLDATACOPY
PUSH1 0x0
DUP1
PUSH2 0x104
PUSH1 0x0
DUP1
PUSH1 0x0
CALLDATALOAD
PUSH1 0x60
SHR
GAS
CALL
DUP1
ISZERO
PUSH2 0x194
JUMPI
STOP
JUMPDEST
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH20 0x7b71570b01e5d1986a20f97a0db0d309cf685227
CALLER
SUB
ISZERO
PUSH2 0x1b7
JUMPI
STOP
JUMPDEST
PUSH1 0x1
CALLVALUE
GT
ISZERO
PUSH2 0x1c5
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
PUSH32 0xa9059cbb00000000000000000000000000000000000000000000000000000000
PUSH1 0x0
MSTORE
PUSH20 0x7b71570b01e5d1986a20f97a0db0d309cf685227
PUSH1 0x4
MSTORE
PUSH1 0x0
CALLDATALOAD
PUSH1 0x24
MSTORE
PUSH1 0x0
DUP1
PUSH1 0x44
PUSH1 0x0
DUP1
PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
GAS
CALL
DUP1
PUSH2 0x230
JUMPI
PUSH1 0x0
DUP1
REVERT
JUMPDEST
STOP