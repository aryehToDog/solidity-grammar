// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract changeBytes2 {

    bytes6 public name = 0xe78e8be69886;

    function getchangeBytes() view public returns(bytes memory){

        bytes memory new_name = new bytes(name.length);

        for(uint i = 0; i<name.length; i++) {

            new_name[i] = name[i];
        }

        return new_name;

    }

}