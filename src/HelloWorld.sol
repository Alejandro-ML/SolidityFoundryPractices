// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract HelloWorld {
    string private message;

    constructor() {
        message = "Hello World from Foundry";
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function updateMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}
