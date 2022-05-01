// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// contract Counter {
//     uint public count;

//     function inc() external {
//         count += 1;
//     }

//     function dec() external {
//         count -= 1;
//     }
// }

interface ICounter {
    function count() external view returns (uint);
    function inc() external;
}

contract CallInterface {
    uint public count;
    function examples(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}