// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract EthvalueConverter{
    uint public ethamt; uint public gweiamt; uint public weiamt;
    function EnterEtheramount() public payable {
        weiamt=msg.value;
        ethamt=weiamt/1 ether;
        gweiamt=weiamt/1 gwei;
    }
}
