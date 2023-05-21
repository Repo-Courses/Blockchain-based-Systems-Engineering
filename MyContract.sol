// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Interfaces in Solidity are used to define a contract with certain functions that are left unimplemented.
// Any contract that implements this interface must implement the multiply function.
interface IMultiply {
    // The 'external' keyword means that the function can only be called from outside the contract.
    // The 'pure' keyword indicates that the function doesn't read from or write to the contract's state.
    // The 'returns (uint256)' part specifies that the function will return an unsigned integer.
    function multiply(uint256 a, uint256 b) external pure returns (uint256);
}

// Implementing the IMultiply interface in a contract
contract MyContract is IMultiply {
    // State variables of different types
    bool public myBool = true;
    int public myInt = -1;
    uint public myUint = 1;
    address public myAddress = msg.sender;
    string public myString = "Hello, World!";
    bytes1 public myByte = "b";
    uint[] public myIntArray = [1, 2, 3];

    // Modifiers in Solidity change the behavior of a function in a declarative way.
    // The '_' character in a modifier represents the original function where the modifier is used.
    modifier notZero(uint256 a, uint256 b) {
        // The 'require' function reverts the transaction if the condition within it is not met.
        // The string is the error message that will be thrown if the condition is not met.
        require(a != 0 && b != 0, "Neither a nor b can be zero.");
        _;  // The code of the function using this modifier will be inserted here.
    }

    // Function that multiplies two unsigned integers and returns the result
    // The 'notZero' modifier checks that neither of the function arguments is zero.
    function multiply(uint256 a, uint256 b) public pure notZero(a, b) returns (uint256) {
        return a * b;
    }
}
