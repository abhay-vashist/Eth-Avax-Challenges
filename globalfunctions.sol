//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract SomeCalculations {
    address public admin;
    mapping (address => uint256) public balances;

    constructor() {
        admin = msg.sender;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
