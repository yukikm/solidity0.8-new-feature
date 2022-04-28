// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// gas refund , state updates are reverted
// custom error - save gas
contract Error {
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");

    }

    function testRevert(uint _i) public pure {
        if (_i > 1) {
            if (_i > 2) {
                if (_i > 10) {
                    revert("i > 10");
                }
            }
        }
        
    }

    uint public num = 123;

    function testAssert() public view {
        assert(num == 123);
    }

    function foo(uint _i) public {
        num += 1;
        require(_i < 10);
    }

    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
