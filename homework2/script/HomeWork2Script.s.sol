// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {HomeWork2} from "../src/HomeWork2.sol";

contract HomeWork2Script is Script {

    function run(uint256[] calldata _initialArray) external returns (HomeWork2) {
        vm.startBroadcast();
        HomeWork2 homework2 = new HomeWork2(_initialArray);
        vm.stopBroadcast();
        return homework2;
    }
}
