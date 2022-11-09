// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "./Freedom.sol"; 

contract FreedomFactory {
    Freedom[] public freedomContractArray;
    function createFreedomContract() public{
        Freedom freedomContract = new Freedom();
        freedomContractArray.push(freedomContract);
    }

    function ffSet(uint _freedomContractIndex, bool _ffIsTotallyFree) public { 
        freedomContractArray[_freedomContractIndex].setIsTotallyFree(_ffIsTotallyFree);
    }

    function ffGet(uint _freedomContractIndex) public view returns (bool) {
        return freedomContractArray[_freedomContractIndex].getIsTotallyFree();
    }
}