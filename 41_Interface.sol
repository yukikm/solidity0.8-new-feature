// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Counter {
    uint public count;

    function inc() external {
        count += 1;
    }

    function dec() external {
        count -= 1;
    }
}

contract CallInterface {
    function examples(address _counter) external {
        Counter(_counter).inc();
    }
}