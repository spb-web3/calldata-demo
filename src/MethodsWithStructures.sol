// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {Structures} from "./library/Structures.sol";

contract MethodsWithStructures {
    using Structures for Structures.CompositeDynamicStruct;
    using Structures for Structures.DynamicStruct;
    using Structures for Structures.StaticStruct;

    function funWithCompositeDynamicStructInMemory(Structures.CompositeDynamicStruct memory cds) public pure {

    }
    
    function funWithCompositeDynamicStructInCalldata(Structures.CompositeDynamicStruct calldata cds) public pure {

    }

    function funWithDynamicStructInMemory(Structures.DynamicStruct memory ds) public pure {

    }

    function funWithDynamicStructInCalldata(Structures.DynamicStruct calldata ds) public pure {

    }

    function funWithStaticStructInMemory(Structures.StaticStruct memory ss) public pure {

    }

    function funWithStaticStructInCalldata(Structures.StaticStruct calldata ss) public pure {

    }

}
