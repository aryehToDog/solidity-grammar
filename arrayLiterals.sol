// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract arrayLiterals {

    function getarrayLiterals1() view public returns(uint[3] memory) {

        // return [1,2,3];
    }

    function getarrayLiterals2() view public returns(uint[3] memory) {

        // return [256,2,3];
    }

    function getarrayLiterals3() pure public returns(uint8[3] memory) {

        return [1,2,3];
    }

    function getarrayLiterals4() pure public returns(uint16[3] memory) {

        return [256,2,3];
    }

    function getarrayLiterals5() pure public returns(uint[3] memory) {

        return [uint(1),2,3];
    }

    function getarrayLiterals6(uint[3] memory grade) pure public returns(uint) {

        uint sum = 0;
        for(uint i = 0; i<grade.length; i++) {

            sum += grade[i];
        }
        return sum;
    }
}