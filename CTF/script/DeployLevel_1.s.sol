// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import {Script} from "forge-std/Script.sol";
import {Level_1} from "../src/Level_1.sol";

contract DeployLevel_0 is Script {
    function run() external returns (Level_1) {
        vm.startBroadcast();
        Level_1 level0 = new Level_1();
        vm.stopBroadcast();
        return level0;
    }
}
