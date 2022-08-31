// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract modifierTest2 {

    uint public level = 100;

    string public name;

    uint public DNA;

    // 传值
    modifier needLevelControl(uint needLevel) {
        require(level >= needLevel);
        _;
    }

    function changeName() public needLevelControl(10) {
        name = "arych";
    }

    function changeDNA() public needLevelControl(100) {
        DNA = 999;
    }

}