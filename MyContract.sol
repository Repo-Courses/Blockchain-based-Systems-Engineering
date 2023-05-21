pragma solidity >=0.8.0 <0.9.0;

contract MyContract {
    // State variable of type bool
    bool public myBool = true;

    // State variable of type int and uint
    int public myInt = -1;
    uint public myUint = 1;

    // State variable of type address
    address public myAddress = msg.sender;

    // State variable of type string
    string public myString = "Hello, World!";

    // State variable of type bytes (fixed-length byte array)
    bytes1 public myByte = "b";

    // State variable of type dynamic array of uint
    uint[] public myIntArray = [1, 2, 3];

    // Function that multiplies two unsigned integers and returns the result
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}
