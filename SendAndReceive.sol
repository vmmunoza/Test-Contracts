// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract TokenTransfer{
    mapping(address => uint256) public balances;

    function sendToken(address _to, uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Not enough tokens");
        balances[msg.sender]-= _amount;
        balances[_to]+= _amount;
    }

    function getTokenBalance() public view returns (uint256){
        return balances[msg.sender];
    }
}