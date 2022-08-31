// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract constantsTest {

    uint public num = 1;

    uint public constant kk = 100;

    // function test() public constant returns(uint) {

    //     return num;
    // }

    function test() public view returns(uint) {

        return num;
    }

    function test2() public pure returns(uint) {

        return kk;
    }

    function test3() public pure returns(uint) {
        // kk = 1000;
        return kk;
    }

}