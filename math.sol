pragma solidity ^0.4.0;

contract math {

    uint public num1 = 4;
    uint public num2 = 2;

    function add() public view returns(uint) {
        return num2 + num1;
    }

    function sub() public view returns(uint) {
        return num1 - num2;
    }

    function mul() public view returns(uint) {
        return num2 * num1;
    }

    function div() public view returns(uint) {
        return num1 / num2;
    }

    function rem() public view returns(uint) {
        return num1 % num2;
    }

    function pingfang() public view returns(uint) {
        return num1 ** num2;
    }

}