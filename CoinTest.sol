// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract CoinTest {

    mapping (address => uint) public balances;

    // 初始化总量恒定 不可修改
    constructor(uint instalSupport) {
        balances[msg.sender] = instalSupport;
    }

    function send(address receiver, uint amount) public returns(bool success) {

        // 保证转账的余额 大于 可以转账的数量
        require(balances[msg.sender] >= amount);
        // 保证溢出bug
        require(balances[receiver] + amount >= balances[receiver]);
        // 转账代币
        balances[msg.sender] -= amount;
        // 接收代币
        balances[receiver] += amount;
        return true;
    }


}