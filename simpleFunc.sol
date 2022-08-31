// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract simpleFunc {

    uint numbel;

    function setNumbel(uint _numbel) public {
        numbel = _numbel;
    }

    function getNumbel() public view returns(uint) {
        return numbel;
    }


}