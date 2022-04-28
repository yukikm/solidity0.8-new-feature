// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract FunctionIntro {
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }
}