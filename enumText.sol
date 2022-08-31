// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract enumText {

    enum girl  {
        fengjie,
        bingbing,
        yuanyuan
    }

    girl dataGirl = girl.fengjie;

    function getGirlType() public pure returns (girl) {
        return girl.fengjie;
    }

    function oneNightGirl() public returns (string memory) {
        require(girl.fengjie == dataGirl);
        dataGirl = girl.bingbing;
        return "fengjie";
    }

    function twoNightGirl() public view returns (string memory) {
        require(girl.bingbing == dataGirl);
        return "bingbing";
    }
}