// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Faucet {

    // 外部 给 合约账户 转账
    function pay() public payable {
        payable(this).transfer(msg.value);
    }

    // 获取合约账户
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    // 获取外部账户个数
    function getAccountBalance() public view returns(uint) {
        return msg.sender.balance;
    }

    function withdrow(uint amount) public {

        require(amount <= 1000000000000000000);
        payable(msg.sender).transfer(amount);
    }

    receive() external payable{}
}

/*

receive()
一个合约只能有一个receive函数，该函数不能有参数和返回值，需设置为external，payable；

当本合约收到ether但并未被调用任何函数，未接受任何数据，receive函数被触发；

fallback()
一个合约只能有一个receive函数，该函数不能有参数和返回值，需设置为external；

可设置为payable；

当本合约的其他函数不匹配调用，或调用者未提供任何信息，且没有receive函数，fallback函数被触发；
————————————————
版权声明：本文为CSDN博主「厨师长爱炼丹」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/hahadesu/article/details/117913695

*/