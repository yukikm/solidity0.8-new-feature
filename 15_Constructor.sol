// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Constructor {
    address public owner;
    uint public x;
    constructor(uint _x) {
        owner = msg.sender;
        x = _x;
    }

    

}