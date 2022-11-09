// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "./Freedom.sol";

contract ExtraFreedom is Freedom{
    function setIsTotallyFree(bool x) public override {
        isTotallyFree = !x;
    }
}