// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract destructTest {

    address public owner;

    uint public money = 0;

    constructor() {
        owner = msg.sender;
    }

    function add() public returns(uint) {
        return money += 10;
    }

    function kill() public {
        // 销毁合约
        selfdestruct(payable(owner));
    }

}