// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract convertethervalue {
    uint256 public weiAmt;
    uint256 public etherAmt;
    uint256 public gweiAmt;

    function deposit() public payable {
        weiAmt = msg.value;
        etherAmt = weiAmt / 1 ether;
        gweiAmt = weiAmt / 1 gwei;
    }
}
