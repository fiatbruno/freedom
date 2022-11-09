// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Freedom {
    bool isTotallyFree = false;

    mapping (string => bool) categoriesToFreedom;

    Category[] categories;

    struct Category {
        string name;
        uint level;
        bool isFree;
    }

    function setIsTotallyFree(bool x) public virtual{
        isTotallyFree = x;
    }   
    function getIsTotallyFree() public view returns (bool) {
        return isTotallyFree;
    } 
    
    function addCategory(string memory _name, uint _level, bool _isFree) public {
        categories.push(Category(_name, _level, _isFree));
        categoriesToFreedom[_name] = _isFree;
    }
}