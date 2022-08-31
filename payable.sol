// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract payableTest {

    // 外部账户给智能合约转账 直接加上 payable
    function pay() public payable {

    }

    function getBalance() view public returns(uint) {
        // this 代表智能合约地址
        return address(this).balance;
    }

    function getBalance2(address account) view public returns(uint) {
        return address(account).balance;
    }

    // 外部账户 转账给 外部账户
    function transfer() public payable {

        // 给这个地址转账
        address account = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

        payable(account).transfer(msg.value);
    }

    function sendmoney() public payable returns(bool) {
        // 给这个地址转账
        address account = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

        return payable(account).send(10 ether);
    }

    // 外部账户 转账给 合约账户
    function transferToContractAccount() public payable {
        payable(this).transfer(msg.value);
    }

    // 当一个合约需要进行以太交易时，需要加两个函数 用fallback代替function。第二个警告是有fallback，就要加一个receive
    fallback() external payable {}
    receive() external payable {}
}