// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract TestCall {
    string public message;
    uint public x;

    event Log(string message);

    fallback() external payable {
        emit Log("fallback was called");
    }

    function foo(string memory _message, uint _x) external payable returns(bool, uint) {
        message = _message;
        x = _x;
        return (true, 999);
    }
}