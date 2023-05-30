// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Owned {
    address private owner;
    uint private data;

    // This constructor sets the `owner` when the contract is created.
    constructor() {
        owner = msg.sender;
    }

    // This modifier verifies that the function is being called by the owner of the contract.
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    // An example function that uses the `onlyOwner` modifier.
    function doSomething(uint _data) public onlyOwner {
        // This code will only be executed if the function is called by the owner of the contract.
        data = _data;  // set the value of `data`
    }

    // Function to get the value of `data`
    function getData() public view returns (uint) {
        return data;
    }
}
