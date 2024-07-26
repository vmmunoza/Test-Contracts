// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Modifier that checks whether the caller of the function is the owner.
// The '_' symbol is a placeholder that shows where the function body will be inserted when the modifier is applied.


contract Example{
    uint private value;

    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }

    function setValue(uint _newValue) public onlyOwner {
        value = _newValue;
    }

}