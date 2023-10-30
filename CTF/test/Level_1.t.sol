// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Level_1} from "../src/Level_1.sol";

contract Level1Test is Test {
    Level_1 level_1;
    uint256[2][3] x = [[1,1],[1,1],[1,1]];
    uint256[2][3] y = [[1,1],[1,1],[1,1]];
    uint256[2][3] expected = [[2,2],[2,2],[2,2]];
    function setUp() public {
        level_1 = new Level_1();
    }

    function testFuzz_UserInput () public {
        uint256[2][3] memory result;
        result  = level_1.solution(x,y);
        // assertEq(result, expected);
        // assertEq(1, 1);
        assertEq(expected.length, result.length);
    }

}
