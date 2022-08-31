// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract constantsFun {

    uint public a;

    // constructor() {
    //     a = 100;
    // }

    constructor(uint _a) {
        a = _a;
    } 
}

contract constantsFun2 {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

}