// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract E {
    event Log(string message);

    function foo() public virtual {
        emit Log("E.foo");
    }

    function bar() public virtual {
        emit Log("E.bar");
    }
}
