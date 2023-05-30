// Anatomy of a Smart Contract
// Create a basic smart contract in Solidity that represents a simple auction. 
// The contract should have a start and end time, a highest bidder, and functions to start the auction, bid, and withdraw funds.

// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.17;

contract UserData {

    struct User {
        string name;
        uint age;
    }

    mapping(address => User) private users;

    function setUserData(string memory _name, uint _age) public {
        User memory newUser = User(_name, _age);
        users[msg.sender] = newUser;
    }

    function getUserData(address _address) public view returns (string memory, uint) {
        User memory userToReturn = users[_address];
        return (userToReturn.name, userToReturn.age);
    }

    string public greet = "Hello, World!";


    function helloWorld() public view returns (string memory) {
        return greet;
    }

    function helloWorld2() public pure returns (string memory) {
        return "HelloWorld";
    }

}
