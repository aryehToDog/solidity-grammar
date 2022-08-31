// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract global {

    function getGlobal() view public returns(address) {
        return msg.sender;
    }

    function getGlobal2() view public returns(uint) {
        return block.difficulty;
    }

    function getGlobal3() view public returns(uint) {
        return block.number;
    }

    function getGlobal4() view public returns(address) {
        return block.coinbase;
    }
}