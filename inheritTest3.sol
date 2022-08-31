// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract father {
    uint public money = 1000;

    // 继承中的重载 + virtual
    function dahan() public view virtual returns(string memory) {
        return "father_dahan";
    }
}

contract son is father {

    function getMoney() public view returns(uint) {
        return money;
    }

    // override
    function dahan() public pure override returns(string memory) {
        return "son_dahan";
    }

    function test() public pure returns(string memory) {
        return dahan();
    }


}
