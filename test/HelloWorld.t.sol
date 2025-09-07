pragma solidity ^0.8.24;

// Imports: include testing utilities from Foundry and the contract under test
import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

// Test contract: defines the test suite for the HelloWorld contract
contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    // Setup section: runs before each test to ensure a fresh contract instance
    function setUp() public {
        helloWorld = new HelloWorld();
    }

    // Test section: verifies that the initial message is stored correctly
    function testGetMessage() public view {
        string memory message = helloWorld.getMessage();
        assertEq(message, "Hello World from Foundry");
    }

    // Test section: verifies that the message can be updated and retrieved correctly
    function testUpdateMessage() public {
        string memory newMessage = "Hello World from Foundry Test";

        helloWorld.updateMessage(newMessage);

        string memory updatedMessage = helloWorld.getMessage();

        assertEq(updatedMessage, newMessage);
    }
}
