// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract modifierTest {

    address public owner;


    uint public a;
    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOwner {

        require(owner == msg.sender);
        _;
    }

    function test(uint _a) public OnlyOwner {
        a = _a;
    }


}