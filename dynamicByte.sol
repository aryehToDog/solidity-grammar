pragma solidity ^0.4.0;

contract dynamicByte {

    bytes public name = new bytes(2);

    function initName() public {
        name[0] = 0x77;
        name[1] = 0x88;
    }

    function getLength() public view returns(uint) {
        return name.length;
    }

    function changeName() public {
         name[0] = 0x11;
    }

    function changeLength() public {
        name.length = 5;
    }

    function pushName() public {
        name.push(0x99);
    }

}