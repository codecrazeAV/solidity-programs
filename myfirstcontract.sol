// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract myfirstcontract{
    uint public  a;
    bool private b;
    string internal c;
    address internal d;

    function seta() public returns (uint){
        a=45;
        return a;
    }
    function geta() public view returns(uint){
        return a;
    }

    function setb() public returns (bool){
        b=true;
        return b;
    }
    function getb() public view returns(bool){
        return b;
    }
    function setc(string memory s1) public returns (string memory){
        c=s1;
        return c;
    }
    function getc() public view returns(string memory){
        return c;
    }
    function setd(address d1) public returns (bool){
        d=d1;
        return b;
    }
    function getd() public view returns(bool){
        return b;
    }
}
