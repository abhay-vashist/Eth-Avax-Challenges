// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract ForAdminOnly{
    address public admin;
    constructor(){
        admin = msg.sender;
    }
    modifier OnlyAdmin {
        require(msg.sender == admin, "For Admin Use Only");
        _;
    }
    uint public value;
    function set(uint newvalue) public OnlyAdmin{
        value = newvalue;
    }
    function get() public view OnlyAdmin returns (uint){
        return value;
    }
    function transferAdmin(address newAdmin) public OnlyAdmin{
        admin = newAdmin;
    }
}
