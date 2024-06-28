// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdvancedSolidityExample {
    // State variables
    address public owner;
    uint public count;

    // Event declaration for logging
    event CountIncremented(uint newCount);

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    // Constructor to set the initial owner
    constructor() {
        owner = msg.sender;
    }

    // Public function to increment the count
    function incrementCount() public {
        count += 1;
        // Emitting an event for logging
        emit CountIncremented(count);
    }

    // External function to reset the count, restricted to the owner
    function resetCount() external onlyOwner {
        count = 0;
    }

    // Private function to get a special number (internal use only)
    function getSpecialNumber() private pure returns (uint) {
        return 42;
    }

    // Internal function to demonstrate internal visibility
    function internalFunction() internal view returns (address) {
        return owner;
    }

    // Function with error handling using require and assert
    function errorHandlingExample(uint value) public pure returns (string memory) {
        require(value > 0, "Value must be greater than zero");

        uint result = value * 2;
        // Using assert to check for internal errors
        assert(result >= value);

        if (result == 42) {
            revert("Result cannot be 42");
        }

        return "All checks passed";
    }
}
