// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Variable types in Solidity

contract VarTypes{
    uint256 public myNumber;
    int256 public myBalance;
    bool public isTrue;
    string public myString;
    address public myAddress;

    function setValues(uint256 _number, int256 _balance, bool _isTrue, string memory _string, address _adress) public{
        myNumber = _number;
        myBalance = _balance;
        isTrue = _isTrue;
        myString = _string;
        myAddress = _address;
    }
}