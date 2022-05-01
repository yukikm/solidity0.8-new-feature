// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract S {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract U is S("s"), T("t") {
    
} 

contract V is S, T {
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}

contract VV is S("s"), T {
    constructor(string memory _text) T(_text) {

    }
}


// Order of execution
// 1. S
// 2. T
// 3, V0
contract V0 is S, T {
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}

// Order of execution
// 1. S
// 2. T
// 3, V1
contract V1 is S, T {
    constructor(string memory _name, string memory _text) T(_text) S(_name) {

    }
}

// Order of execution
// 1. T
// 2. S
// 3, V3
contract V3 is T, S {
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}



