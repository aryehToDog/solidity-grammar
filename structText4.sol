// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract structText4 {

    struct student {
        uint grade;
        string name;
    }

    student stu = student(100,"arych");

    function test(student storage _stu) pure internal {

        student memory temp = _stu;
        temp.name = "wangkun";
    }

    // 值传递
    function call() public view returns(string memory) {
        test(stu);
        return stu.name;  // arych
    }

}