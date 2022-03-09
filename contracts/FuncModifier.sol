//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract FuncModifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not Valid Address");
        _;
    }

    function changeOwner(address _newOwner)
        public
        onlyOwner
        validAddress(_newOwner)
    {
        owner = _newOwner;
    }
}
