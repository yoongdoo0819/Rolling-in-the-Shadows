PUSH1 0x80
PUSH1 0x40
MSTORE
CALLDATASIZE
ISZERO
PUSH1 0xd6
JUMPI
PUSH1 0x0
PUSH32 0xffffffff00000000000000000000000000000000000000000000000000000000
DUP2
CALLDATALOAD
AND
DUP2
MSTORE
PUSH32 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
PUSH1 0x20
MSTORE
PUSH1 0x40
DUP2
SHA3
SLOAD
PUSH1 0x60
SHR
DUP1
ISZERO
PUSH1 0x7e
JUMPI
DUP2
DUP1
SWAP2
CALLDATASIZE
DUP3
DUP1
CALLDATACOPY
DUP2
CALLDATASIZE
SWAP2
GAS
DELEGATECALL
RETURNDATASIZE
DUP3
DUP1
RETURNDATACOPY
ISZERO
PUSH1 0x7a
JUMPI
RETURNDATASIZE
SWAP1
RETURN
JUMPDEST
RETURNDATASIZE
SWAP1
REVERT
JUMPDEST
PUSH32 0x8c379a000000000000000000000000000000000000000000000000000000000
PUSH1 0x80
MSTORE
PUSH1 0x20
PUSH1 0x84
MSTORE
PUSH1 0x20
PUSH1 0xa4
MSTORE
PUSH32 0x4469616d6f6e643a2046756e6374696f6e20646f6573206e6f74206578697374
PUSH1 0xc4
MSTORE
PUSH1 0x64
PUSH1 0x80
REVERT
JUMPDEST
STOP
INVALID
LOG2
PUSH5 0x6970667358
INVALID
SLT
SHA3
STOP
SUB
EXP
INVALID
SGT
PUSH4 0x87aa2153
RETURNDATACOPY
PUSH18 0x1d051ba58751220ed31c37f1940900c277f1
INVALID
INVALID
PUSH5 0x736f6c6343
STOP
ADDMOD
EQ
STOP
CALLER