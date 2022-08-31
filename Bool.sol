pragma solidity ^0.4.0;
 contract boolTest {
     
     bool public a;

     int num1 = 100;
     int num2 = 200;

    function boolTest1() public view returns(bool) {
        return a;
    }

    function boolTest2() public view returns(bool) {
        return !a;
    }
    
    function compare() public view returns(bool) {
        return num1 == num2;
    }

    function compare2() public view returns(bool) {
        return num2 != num1;
    }

    function yu() public view returns(bool) {
        return (num1 == num2) && true;
    }

    function yu2() public view returns(bool) {
        return (num1 != num2) && true;
    }

    function huo() public view returns(bool) {
        return (num1 == num2) || true;
    }

    function huo2() public view returns(bool) {
        return (num1 != num2) || true;
    }

    function huo3() public view returns(bool) {
        return (num1 == num2) || false;
    }

 }