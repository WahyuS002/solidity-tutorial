//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract A {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract B is A("Fixed Input") {}

contract C is A {
    constructor() A("Another way to hard code input") {}
}

contract D is A {
    constructor(string memory _name) A(_name) {}
}
