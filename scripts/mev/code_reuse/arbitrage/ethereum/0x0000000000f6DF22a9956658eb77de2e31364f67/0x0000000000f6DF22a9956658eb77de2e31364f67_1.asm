PUSH20 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
CALLER
DUP2
EQ
PUSH2 0x13b
JUMPI
CALLER
PUSH15 0xc056aacd917d81ae932bd38177f08a
EQ
PUSH2 0xec
JUMPI
PUSH4 0x70a08231
SWAP1
PUSH1 0x0
SWAP2
DUP1
DUP4
MSTORE
PUSH1 0x20
SWAP2
ADDRESS
DUP4
MSTORE
DUP3
DUP5
PUSH1 0x24
PUSH1 0x1c
DUP5
GAS
STATICCALL
ISZERO
PUSH2 0xdd
JUMPI
DUP3
JUMPDEST
CALLDATASIZE
DUP2
LT
PUSH2 0xa5
JUMPI
POP
SWAP2
DUP4
PUSH1 0x24
PUSH1 0x1c
DUP3
SWAP6
DUP5
SWAP8
MLOAD
SWAP6
DUP5
MSTORE
ADDRESS
DUP6
MSTORE
GAS
STATICCALL
ISZERO
PUSH2 0x96
JUMPI
DUP2
MLOAD
SWAP1
DUP3
CALLDATALOAD
DUP2
ADD
DUP1
DUP4
EQ
SWAP1
DUP4
LT
OR
PUSH2 0x89
JUMPI
DUP3
DUP1
RETURN
JUMPDEST
PUSH1 0x60
SWAP4
PUSH1 0x3
DUP5
MSTORE
MSTORE
PUSH1 0x40
MSTORE
REVERT
JUMPDEST
POP
SWAP1
PUSH1 0x1
DUP3
MSTORE
RETURNDATASIZE
DUP3
DUP3
RETURNDATACOPY
RETURNDATASIZE
ADD
SWAP1
REVERT
JUMPDEST
DUP4
DUP2
ADD
CALLDATALOAD
PUSH1 0x40
SWAP2
DUP2
DUP4
DUP3
ADD
DUP8
CALLDATACOPY
DUP7
DUP7
DUP4
DUP2
DUP4
DUP6
CALLDATALOAD
GAS
CALL
ISZERO
PUSH2 0xc7
JUMPI
ADD
ADD
PUSH2 0x53
JUMP
JUMPDEST
DUP7
DUP1
MSTORE
DUP6
MSTORE
DUP2
ADD
SWAP1
MSTORE
POP
DUP3
PUSH1 0x60
RETURNDATASIZE
DUP3
DUP3
RETURNDATACOPY
RETURNDATASIZE
ADD
SWAP1
REVERT
JUMPDEST
POP
POP
PUSH1 0x1
DUP3
MSTORE
RETURNDATASIZE
DUP3
DUP3
RETURNDATACOPY
RETURNDATASIZE
ADD
SWAP1
REVERT
JUMPDEST
PUSH1 0x0
DUP1
DUP1
SWAP3
DUP2
CALLDATALOAD
SWAP1
PUSH4 0x2e1a7d4d
DUP4
MSTORE
DUP3
PUSH1 0x24
PUSH1 0x1c
PUSH1 0x20
SWAP7
DUP8
SWAP5
DUP7
DUP7
MSTORE
GAS
CALL
ISZERO
PUSH2 0x12d
JUMPI
DUP2
DUP1
DUP1
SWAP3
DUP6
CALLDATALOAD
GAS
CALL
ISZERO
PUSH2 0x120
JUMPI
POP
DUP1
RETURN
JUMPDEST
PUSH1 0x5
DUP3
MSTORE
RETURNDATASIZE
DUP3
DUP3
RETURNDATACOPY
RETURNDATASIZE
ADD
SWAP1
REVERT
JUMPDEST
POP
PUSH1 0x4
SWAP1
MSTORE
RETURNDATASIZE
DUP3
DUP3
RETURNDATACOPY
RETURNDATASIZE
ADD
SWAP1
REVERT
JUMPDEST
STOP