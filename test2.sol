pragma solidity ^0.4.0;

contract helloWorld {
    string public myname = "arych";

    function getName() public view returns(string) {
        return myname;
    }

    function changeName(string _newName) public {
        myname = _newName;
    }

    function pureTest(string _newName) pure public returns(string) {
        return _newName;
    }
}