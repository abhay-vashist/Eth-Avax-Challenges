// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract storage_memory{
    // state variable => Storage
    struct user{
        string name;
        uint id;
        uint age;
    }
    mapping(address => user) User;

    // function arguments => Memory
    function squareplustwo(uint x) public pure returns (uint){
        return x**2 + 2;
    }
}
