// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
// 21442 gas
contract GlobalVariables {
    address public constant MY_ADDRESS = 0x0000000000000000000000000000000000000000;
    uint public constant MY_UINT = 123;

}
// 23553 gas
contract Var {
    address public MY_ADDRESS = 0x0000000000000000000000000000000000000000;
}