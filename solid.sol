// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InteractionLogger {

    // Event to log the interaction with a timestamp
    event InteractionLogged(address indexed user, uint256 timestamp);

    // Function to log interactions
    function logInteraction() public {
        // Emit the event with the address of the sender and the current block timestamp
        emit InteractionLogged(msg.sender, block.timestamp);
    }

    // A fallback function to handle ether transfers or other calls
    fallback() external payable {
        emit InteractionLogged(msg.sender, block.timestamp);
    }

    // A receive function to handle direct ether transfers
    receive() external payable {
        emit InteractionLogged(msg.sender, block.timestamp);
    }
}
