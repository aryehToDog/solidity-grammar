// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract structText5 {

    struct student {
        uint grade;
        string name;
    }

    function test(student memory _stu) pure internal {

        student memory stu2 = _stu;
        stu2.name = "wangkun";
    }

    // 值传递
    function call() public pure returns(string memory) {
        student memory stu = student(100,"arych");
        test(stu);
        return stu.name;  // wangkun
    }

}