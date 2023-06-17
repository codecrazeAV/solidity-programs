// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageContextExample {
    // Function to get the sender address
    function getSenderAddress() public view returns (address) {
        return msg.sender;
    }

    // Function to get the value (amount of Ether) sent with the message
    function getSentValue() public view returns (uint256) {
        return msg.value;
    }

    // Function to get the data payload sent with the message
    function getDataPayload() public view returns (bytes memory) {
        return msg.data;
    }

    // Function to get the gas left for transaction
    function getGasPrice() public view returns (uint256) {
        return msg.gastleft;
    }
}
