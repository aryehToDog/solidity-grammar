// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract bytes32ToString {

    function bytes32ToStrings(bytes memory newname) pure public returns(string memory) {

        uint count = 0;

        for(uint i = 0; i < newname.length; i++) {

            bytes1 char = newname[i];

            if (char != 0){
                count++;
            }
        }

        bytes memory _newName = new bytes(count);

        for(uint j = 0; j < count; j++) {
            _newName[j] = newname[j];
        }

        return string(_newName);

    }

}