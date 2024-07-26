// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// 'Person' class with three properties. New object of the Person class can be created by parsing the arguments.
// EX: Person person = new Person('Bob', 20);

contract Person{
    string name;
    uint age;
    address public owner;

    constructor(string memory _name, uint _age) public{
        name = _name;
        age = _age;
        address = msg.sender;
    }

    function getAge() public view returns (uint){
        return age;
    }

    function setAge(uint _age) public {
        age = _age;
    }

    function printDetails() public view returns (string memory) {
        return string(abi.encodePacked("Name:",name,", Age:",uint2str(age)));
    }

    // function to convert uint to string:
    function uint2str(uint _i) internal pure returns (string memory){
        if (_i ==0){
            return "0";
        }
        uint j = _i;
        uint lenght;
        while (j!=0){
            lenght++;
            j/=10;
        }
        bytes memory bstr = new bytes(lenght);
        uint k = lenght;
        while (_i != 0){
            k= k-1;
            uint8 temp = uint8(48 + _i%10);
            bytes1 b1 = bytes1(temp);
            bstr[k]=b1;
            _i /=10;
        }
        return string(bstr);
    }



}