// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract structText {

    // 结构体的定义
    struct student {
        uint grade;
        string name;

        mapping(uint => string) map;
    }

    student storageStu;

    //结构体初始化
    function init() public returns(uint, string memory, string memory) {

        storageStu.map[0] = "helloworld";
        storageStu.grade = 100;
        storageStu.name = "arych";
        return (storageStu.grade, storageStu.name, storageStu.map[0]);
    }

    // function init2() public pure returns(uint, string memory) {

    //     student memory s = student({grade:1000,name:"wangkun"});
    //     storageStu = s;
    //     s.map[0] = "helloworld";
    //     return (s.grade, s.name);
    // }


}