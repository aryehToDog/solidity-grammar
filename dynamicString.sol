pragma solidity ^0.5.0;

contract dynamicString {

    string public name = "arych";

    string public testStr = "%^&*&^*(&^&*";

    string public chineseStr = "王昆"; //0xe78e8be69886

    function getName2Length() view public returns(uint) {
        return bytes(testStr).length;
    }

    function getName3Length() view public returns(uint) {
        return bytes(chineseStr).length;
    }

    function getChieseName() view public returns(bytes memory) {
        return bytes(chineseStr);
    }

    function getLength() view public returns(uint){
        return bytes(name).length;
        // return name.length;
    }

    function getName() view public returns(string memory) {
        return name;
    }
    
    function getBytesName() view public returns(bytes memory) {
        return bytes(name);
    }

    function getOneBytesName() view public returns(bytes1){
        return bytes(name)[0];
    }

    function changeOneBytesName() public {
        bytes(name)[0] = "w";
    }

}