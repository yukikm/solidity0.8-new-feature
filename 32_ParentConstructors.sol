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

contract U is S, T {
    
} 


