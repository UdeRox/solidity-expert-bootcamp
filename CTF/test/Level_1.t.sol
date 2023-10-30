// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Level_1} from "../src/Level_1.sol";

contract Level_1_Test is Test {
    Level_1 level_1;

    function setUp() public {
        level_1 = new Level_1();
    }
}
