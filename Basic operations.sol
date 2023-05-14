// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/FixedPoint.sol";

contract Basicop {
    //using FixedPoint for *;

    function Add(uint256 x, uint256 y) external pure returns (uint256) {
        uint256 add = x +y;
        return add;
    }

    function Sub(uint256 x, uint256 y) external pure returns (int256) {
        int256 sub = int256(x)-int256(y);
        return sub;
    }

    function Mul(uint256 x, uint256 y) external pure returns (uint256) {
        uint256 mul = x*y;
        return mul;
    }

    function Dev(int x, int y) external pure returns (int) {
        int dev = (x)/(y);
        return dev;
    }
}
