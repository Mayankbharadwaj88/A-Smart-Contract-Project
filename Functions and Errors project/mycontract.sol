// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract solver {

    address public owner;
    uint256 public value;
    uint256 public maximumValue;

    constructor() {
        owner = msg.sender;
        value = 0;
        maximumValue = 100;
    }

   
    function setValue(uint256 newValue) public {
        
        require(newValue > 0, "Value must be greater than zero");
        require(newValue <= maximumValue, "Value must be less than or equal to maximum value");
        
        value = newValue;
    }

    
    function restrictedFunction() public {
      
        require(msg.sender == owner, "Only the owner can call this function");

        value = 0;
    }

    function checkInvariant() public view {

        assert(value <= maximumValue);
    }

    
    function conditionalRevert(bool shouldRevert) public pure {
        
        if (shouldRevert) {
            revert("The transaction was reverted intentionally");
        }
    }
}
