// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract bytes2String {

    bytes public name = new bytes(2);

    function init() public {
        name[0] = 0x7a;
        name[1] = 0x7a;
    }

    function bytes2Strings() view public returns(string memory) {
        return string(name);
    }

}