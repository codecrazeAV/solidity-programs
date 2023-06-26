// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface A {
    function converter() external view returns (uint);

    function increment() external;
}

contract B {
    function convert(address _A) external {
        A(_counter).converter();
    }

    function getCount(address _A) external view returns (uint) {
        return A(_A).increment();
    }
}
