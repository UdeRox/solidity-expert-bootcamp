// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {HomeWork2} from "../src/HomeWork2.sol";

contract HomeWork2Script is Script {
    uint256[] public initialArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function run() external returns (HomeWork2) {
        vm.startBroadcast();
        HomeWork2 homework2 = new HomeWork2(initialArray);
        vm.stopBroadcast();
        return homework2;
    }
}
