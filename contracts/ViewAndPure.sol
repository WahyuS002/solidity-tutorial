//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ViewAndPure {
    uint256 public x = 1;

    function testView() public view {
        x + 1;
    }

    // function updateToX() public view {
    //     x += 1;
    // }

    function add(uint256 _x, uint256 _y) public pure {
        _x + _y;
    }
}
