// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A {
    string public name = "Wahyu";

    function getName() public view returns (string memory) {
        return name;
    }
}

// ❌ WRONG WAY TO CHANGE STATE VARIABLE ON PARENT
contract B is A {
    string public name = "WRONG";
}

// ✅ RIGHT WAY TO CHANGE STATE VARIABLE ON PARENT
contract C is A {
    constructor() {
        name = "RIGHT";
    }
}
