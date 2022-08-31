// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract paramTest {

    uint public num;
    string public name;

    function setParam(uint _num, string memory _name) public{

        num = _num;
        name = _name;
    }

    function test() public {

        setParam(10,"arych");
    }

    function test2() public {

        setParam({_num:100,_name:"wangkun"});
    }

}