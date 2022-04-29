// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples() external {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage myStruct = myStructs[msg.sender];
    }
}