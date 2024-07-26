// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// 'ValueSet' logs the new value that was set

contract Example{
    event ValueSet(uint newValue);

    uint private value;

    function setValue(uint newValue) public {
        value = newValue;
        emit ValueSet(newValue);
    }
}