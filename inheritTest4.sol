// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract father {
    uint public money = 1000;

    function test() public pure virtual returns(string memory) {
        return "A";
    }

}

contract mother {
    // uint public money = 1000;
    function test() public pure virtual returns(string memory) {
        return "B";
    }

}

contract son is father, mother {

    function getMoney() public view returns(uint) {
        return money;
    }

    // 重写继承的方法 指定对应的重写父类型
    function test() public pure override(father,mother) returns(string memory) {
        return "Son";
    }

    function getAorB() public pure returns(string memory) {
        return test();  // son
    }


}