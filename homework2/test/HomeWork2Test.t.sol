// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;
import {Test} from "forge-std/Test.sol";
import {HomeWork2Script} from "../script/HomeWork2Script.s.sol";
import {HomeWork2} from "../src/HomeWork2.sol";

contract HomeWork2Test is Test {
    uint256[] public INTIAL_ARRAY = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    HomeWork2 homeWork2;

    function setUp() external {
        HomeWork2Script homeWork2Script = new HomeWork2Script();
        homeWork2 = homeWork2Script.run(INTIAL_ARRAY);
    }

    function testDeployer() public {}

    function testArrayLenght() public {
        assertEq(INTIAL_ARRAY.length, homeWork2.getArrayLength());
    }
}
