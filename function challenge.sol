pragma solidity ^0.8.0;

contract BaseContract {
uint a=36;
address sup;
    function viewFunction() public view returns (uint) {
        return a;
    }

    function pureFunction(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function payableFunction() public payable {
       sup=msg.value;
    }
}
