// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract structText2 {

    struct student {
        uint grade;
        string name;
    }

    student stu;

    function test(student storage _stu) internal {

        student storage s = _stu;
        s.name = "arych";
    }

    // 指针传递 /  stu的name 被进行赋值
    function call() public returns(string memory) {
        test(stu);
        return stu.name; // arych 
    }

}