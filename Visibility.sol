// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Visibility and Functions: 
// Public: called from anywhere.
// Private: called only within the contract.
// Internal: called withing contract and contracts that inherit this contract.
// External: called from outside.

contact Example{
    uint private value;

    function setValue(uint _newValue) public {
        value = _newValue;
    }

    function getValue() private view returns(uint){
        return value;
    }

    function doubleValue() internal {
        value *= 2;
    }

    function tripleValue() external {
        value *= 3;
    }


}