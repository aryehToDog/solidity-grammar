// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract returnTest {

    function test1() public pure returns(uint num) {

        uint _num = 10;
        return _num; // 10
    }

    function test2() public pure returns(uint num) {

        num = 100; // 100
    }

    function test3() public pure returns(uint num) {

        uint _num = 10;
        num = 100;
        return _num; // 10
    }

    function test4() public pure returns(uint num) {

        uint _num = 10;
        num = 100;
        return 1; // 1
    }

    function test5() public pure returns(uint sum, uint mul) {

        uint a = 2;
        uint b = 4;

        sum = a + b;
        mul = a * b;
    }

    function test6() public pure returns(uint sum, uint mul) {

        uint a = 2;
        uint b = 4;

        return(a + b,a * b);
    }

    function test7() public pure returns(uint sum, uint mul) {
        return(100,200);
    }

    function test7(uint a, uint b) public pure returns(uint b1, uint a1) {
        return(b,a);
    }

}