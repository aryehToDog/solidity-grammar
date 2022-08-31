// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract crowdfunding {

    struct funder {
        address funder_address;
        uint funder_money;
    }

    struct needer {
        address needer_address;
        uint required_ammount;
        uint total_ammount;
        uint funder_id;

        // mapping (uint => funder) map;
    }

    uint neederAccount;

    mapping (uint => needer) neederMap;

    function requireNeedAmount(address needer_address, uint required_ammount) public {

        // 受益者人数增加
        neederAccount ++;
        needer storage _needer = neederMap[neederAccount];

        _needer.needer_address = needer_address;
        _needer.required_ammount = required_ammount;
        _needer.total_ammount = 0;
        _needer.funder_id = 0;
    }

    function donate(uint needer_account) public payable {

        // 获取到对应的受益者
        needer storage _needer = neederMap[needer_account];

        // 捐款人数增加
        _needer.funder_id ++;
        _needer.total_ammount += msg.value;

        // _needer.map[_needer.funder_id] = funder(msg.sender, msg.value);
    }

    function checkAmmount(uint needer_account) public {
        // 获取到对应的受益者
        needer storage _needer = neederMap[needer_account];

        require(_needer.total_ammount >= _needer.required_ammount);

        payable(_needer.needer_address).transfer(_needer.total_ammount);
    }

}