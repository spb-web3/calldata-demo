// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {MethodsWithStructures} from "../src/MethodsWithStructures.sol";

contract MethodsWithStructuresScript is Script {

    function run() public returns (MethodsWithStructures mws){
        vm.startBroadcast();
        mws = new MethodsWithStructures(); 
        vm.stopBroadcast();
    }
}