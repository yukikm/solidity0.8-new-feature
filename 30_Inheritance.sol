// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract A {
    function foo() public pure returns (string memory) {
        return "A";
    }

    function bar() public pure returns (string memory) {
        return "A";
    }
}

contract B {}

