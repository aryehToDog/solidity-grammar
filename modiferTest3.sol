// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract modifierTest3 {

    uint public a;

    modifier mod1 {
        a = 1;

        _; // mod2

        a = 3;
    }

    modifier mod2 {
        a = 7;

        _; // 5

        a = 9;
    }

    // 1 7 5 9 3 (嵌套了一个mod2   -    )
    function getvalue() public mod1 mod2 {
        a = 5;
    }

}