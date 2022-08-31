// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract twoArray {

    // 2代表是二维数组中的元素个数
    // 3是代表一维数组中的元素个数

    // 正常取值跟别的语法相同 正常取值
    uint[2][3] public grade = [[1,2],[3,4],[5,6]];

    function getOneArrayLength() view public returns(uint) {
        return grade.length;  // 3
    }

    function getTwoArrayLength() view public returns(uint) {
        return grade[2].length; // 2
    }

    function getcontent() view public returns(uint[2][3] memory) {
        return grade;
    }

    function add() view public returns(uint) {

        uint sum = 0;

        for (uint i = 0; i < grade.length; i++){

            for (uint j = 0; j < grade[i].length; j++) {
                // 求和
                sum += grade[i][j];
            }
        }
        return sum;
    }

    function changeGrade() public{

        grade[2][1] = 100;
    }

}