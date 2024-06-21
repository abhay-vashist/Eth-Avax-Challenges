// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionExample {
    uint public value;
    constructor(uint _initialValue) {
        value = _initialValue;
    }
    function getValue() public view returns (uint) {
        return value;
    }
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function deposit() public payable {
        // Increase contract's balance by the amount sent
    }
}

contract ExtendedFunctionExample is FunctionExample {
    uint public multiplier;
    constructor(uint _initialValue, uint _multiplier) FunctionExample(_initialValue) {
        multiplier = _multiplier;
    }
    function getValueAndMultiplier() public view returns (uint, uint) {
        uint val = getValue();
        return (val, multiplier);
    }
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
    function depositToParent() public payable {
        deposit();
    }
}
