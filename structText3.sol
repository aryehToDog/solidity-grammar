// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract structText3 {

    struct student {
        uint grade;
        string name;
    }

    student stu;

    function test(student memory _stu) internal {

        stu = _stu;
        _stu.name = "arych";
    }

    // 值传递
    function call() public returns(string memory) {
        student memory temp = student(100,"temp");
        test(temp);
        return stu.name;  // temp
    }

}