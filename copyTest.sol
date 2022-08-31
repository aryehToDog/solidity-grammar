// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract copyTest {

    uint public a = 10;

    function copyTestFun() public pure returns(uint) {

        uint a = 100;
        return a;
    }


    function copyTestFun2(uint a) public pure returns(uint) {

        a = 200;
        return a;
    }
    

}