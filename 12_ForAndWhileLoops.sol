// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract ForAndWhileLoops {
    function loops() external pure {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }

            if (i == 5){
                break;
            }
        }

        uint j = 0;
        while (j < 10) {
            j++;
        }
    }

    function sum(uint _n) external pure returns (uint) {
        uint s;
        for (uint i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}