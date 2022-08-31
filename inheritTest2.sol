// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/*
    public : 公开属性 合约内部 合约外部 继承合约都可以访问
    internal: 只有合约内部跟继承合约的才可以进行访问
    private : 私有属性 只有合约内部可以访问
    external: 外部属性 只有合约外部可以访问  内部跟继承合约的想访问的话 需要加上this. 属性可以
*/

contract father {

    uint car = 1;

    uint public house = 1;

    uint internal doge = 2;

    uint private money = 10000;

    function getCar() public view returns(uint) {
        return car;
    }

    function getHouse() public view returns(uint) {
        return house;
    }

    function getDoge() internal view returns(uint) {
        return doge;
    }

    function getMoney() private view returns(uint) {
        return money;
    }

    function getExternal() external pure returns(string memory) {
        return "external";
    }

    function test() public view {
        getCar();
        getHouse();
        getDoge();
        getMoney();

        this.getExternal();
    }
}

contract externalContract {

    father f = new father();

    function getFatherExternal() public view returns(string memory) {
        return f.getExternal();
    }

}

contract son is father {

    function toCar() public view returns(uint) {
        return getCar();
    }

    function toHouse() public view returns(uint) {
        return getHouse();
    }

    function toDoge() public view returns(uint) {
        return getDoge();
    }

    // function getMoney() public view returns(uint) {
    //     return getMoney();
    // }

    function toExternal() external view returns(string memory) {
        return this.getExternal();
    }
}