// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

    address public owner;
    uint256 public value;
    uint256 public maximumValue;

    constructor() {
        owner = msg.sender;
        value = 0;
        maximumValue = 100; // Set an initial maximum value
    }

    // Function to set a new value
    function setValue(uint256 newValue) public {
        // Use require to validate the input
        require(newValue > 0, "Value must be greater than zero");
        require(newValue <= maximumValue, "Value must be less than or equal to maximum value");
        
        value = newValue;
    }

    // Function to only allow the owner to execute certain logic
    function restrictedFunction() public {
        // Use require to ensure only the owner can call this function
        require(msg.sender == owner, "Only the owner can call this function");

        // Functionality only the owner can use: Reset value to zero
        value = 0;
    }

    // Function that uses assert to ensure an invariant
    function checkInvariant() public view {
        // Use assert to ensure value is always less than or equal to maximumValue
        assert(value <= maximumValue);
    }

    // Function that reverts the transaction based on a condition
    function conditionalRevert(bool shouldRevert) public pure {
        // Use revert to conditionally revert the transaction
        if (shouldRevert) {
            revert("The transaction was reverted intentionally");
        }
    }
}
