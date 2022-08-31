// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract mappingTest {

    mapping(address => uint) idMapping;
    mapping(uint => string) nameMapping;

    uint public id = 0;

    // 防止用户重复注册 针对单个账户注册一次
    modifier OnlyResgist {
        require(idMapping[msg.sender] == 0);

        _;
    }

    function resgist(string memory name) public payable OnlyResgist {

        id++;

        address account = msg.sender;

        idMapping[account] = id;
        nameMapping[id] = name;
    }

    function getIdByAddress(address account) view public returns(uint) {
        return idMapping[account];
    }

    function getNameById(uint ids) view public returns(string memory) {
        return nameMapping[ids];
    }

}