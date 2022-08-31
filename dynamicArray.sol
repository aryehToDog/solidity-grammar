// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract dynamicArray {

    uint[] public array = [1,2,3,4,5];

    function getcontent() view public returns(uint[] memory){
        return array;
    }

    function getlength() view public returns(uint) {
        return array.length;
    }

    function sum() view public returns(uint) {
        uint sumCount = 0;
        for (uint i = 0; i < array.length; i++){

            sumCount += array[i];
        }
        return sumCount;
    }

    // 0.6.0之后你不能够动态地修改它数组的长度
    function changeArrayLength() public {
        // array.length = 1;
    }

    function pushArray() public {
        array.push(6);
    }

}