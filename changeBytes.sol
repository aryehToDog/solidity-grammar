// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract changeBytes {

    bytes public name = "0xe78e8be69886";

    function changeBytes1() view public returns(bytes1) {
        return bytes1(name);
    }

    function changeBytes2() view public returns(bytes2) {
        return bytes2(name);
    }

    function changeBytes16() view public returns(bytes16) {
        return bytes16(name);
    }

}