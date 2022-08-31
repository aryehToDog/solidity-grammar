// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Test1 {

    string public hello = "hello world!";
    uint public x = 10;
    int public y = -10;

    function addTen(uint z) public pure returns (uint) {
        return (z + 10);
    }
}