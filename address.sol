// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract addressTest {

    address public account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    address public contractAcount = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    function getunit160() view public returns(uint160) {
        return uint160(account);
    }

    function geiaddress() pure public returns(address) {
        return address(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }
    
    function compeleAddress1() view public returns(bool) {
        return account > contractAcount;  // falese
    }

    function compeleAddress2() view public returns(bool) {
        return account >= contractAcount; // falese
    }

    function compeleAddress3() view public returns(bool) {
        return account < contractAcount; // ture
    }

    function compeleAddress4() view public returns(bool) {
        return account <= contractAcount; // ture
    }
}