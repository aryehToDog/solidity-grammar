// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract fixArray {

    uint[5] public arr = [1,2,3,4,5];

    function init() public {
        arr[0] = 100;
        arr[1] = 200;
    }

    function getArray() view public returns(uint[5] memory){
        return arr;
    }

    function getSum() view public returns(uint) {

        uint sum = 0;

        for (uint i = 0; i < arr.length; i++) {
            sum += arr[i];
        }

        return sum;
    }

    function getArrLength() view public returns(uint) {
        return arr.length;
    }

}