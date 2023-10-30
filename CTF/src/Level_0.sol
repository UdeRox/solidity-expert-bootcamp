// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

contract Level_0 {
    function solution() external pure returns (uint8 x) {
        assembly {
            x := 255
        }
    }
}
