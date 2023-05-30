pragma solidity ^0.8.0;

contract Parent {
    function getMessage() public pure returns (string memory) {
        return "Hello from Parent";
    }
}

contract Child is Parent {
    function callParentMessage() public view returns (string memory) {
        return getMessage();
    }
}
