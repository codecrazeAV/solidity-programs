pragma solidity ^0.8.0;

contract AdminAccess {
    address private admin;

    constructor() {
        admin = msg.sender; // The deployer of the contract is set as the admin
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can access this function.");
        _; // Continue with the function execution
    }

    function adminFunction() public view onlyAdmin returns (string memory) {
        return "This function can only be accessed by the admin.";
    }

    function publicFunction() public pure returns (string memory) {
        return "This function can be accessed by anyone.";
    }
}
