// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

library Structures {

    struct CompositeDynamicStruct {
        DynamicStruct dStruct;
        bool isComposite;
    }

    struct DynamicStruct {
        uint256 length;
        uint256[] array;
    }

    struct StaticStruct {
        uint256 counter;
    }

}
