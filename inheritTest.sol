// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract anamia {

    uint public hair = 1000;

    function eat() public pure returns(string memory) {
        return "eat";
    }

}

contract Dog is anamia {
    
    uint public foot = 2;

    function run() public pure returns(string memory) {
        return "run";
    }
}

contract redDoge is Dog {

    function getFootNum() public view returns(uint) {
        return foot;
    }

    function personRun() public pure returns(string memory) {
        return run();
    }

    function gethairNum() public view returns(uint) {
        return hair;
    }

    function geteat() public pure returns(string memory) {
        return eat();
    }

}