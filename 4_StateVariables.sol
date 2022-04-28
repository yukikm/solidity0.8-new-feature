// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract StateVariables {
    uint public myUint = 123;
    
    function foo() external {
        uint notStateVariable = 456;
    }

    


}