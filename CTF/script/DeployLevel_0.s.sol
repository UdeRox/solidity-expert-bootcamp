// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import {Script} from "forge-std/Script.sol";
import {Level_0} from "../src/Level_0.sol";

contract DeployLevel_0 is Script {
    function run() external returns (Level_0) {
        vm.startBroadcast();
        Level_0 level0 = new Level_0();
        vm.stopBroadcast();
        return level0;
    }
}
