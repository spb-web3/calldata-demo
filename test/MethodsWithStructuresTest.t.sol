// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {MethodsWithStructures} from "../src/MethodsWithStructures.sol";
import {MethodsWithStructuresScript} from "../script/MethodsWithStructuresScript.s.sol";
import {Structures} from "../src/library/Structures.sol";

contract MethodsWithStructuresTest is Test {
    using Structures for Structures.StaticStruct;

    MethodsWithStructuresScript private mwsScript;
    MethodsWithStructures private mws;

    function setUp() public {
        mwsScript = new MethodsWithStructuresScript();
        mws = mwsScript.run();
    }

    function test() public {
        Structures.StaticStruct memory ss = Structures.StaticStruct({counter: 1});
        vm.startBroadcast();
        mws.funWithStaticStructInMemory(ss);
        mws.funWithStaticStructInCalldata(ss);
        (bool success, ) = (address (mws)).call(
            // Structs are actually represented as tuples
            abi.encodeWithSignature("funWithStaticStructInCalldata((uint256))", ss)
            );
        vm.stopBroadcast();
        assertTrue(success);
    }
}