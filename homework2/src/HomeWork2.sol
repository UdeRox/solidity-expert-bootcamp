// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/**
 * @title
 * @author
 * @notice
 *  Write a function that will delete items (one at a time)
 *  from a dynamic array without leaving gaps in the array.
 *  You should assume that the items to be deleted are
 *  chosen at random, and try to do this in a gas efficient
 *  manner.
 *  For example imagine your array has 12 items and you
 *  need to delete the items at indexes 8, 2 and 7.
 *  The final array will then have items {0,1,3,4,5,6,9,10,11}
 */
contract HomeWork2 {
    //dynamic array
    uint256[] public dynamicArray;

    error ItemNotFoundError();
    error IndexOutBoundError();

    constructor(uint256[] memory _iniDynamicdArray) {
        dynamicArray = _iniDynamicdArray;
    }

    //delete function
    // items are choose randomly
    // after deleting no gaps
    // opt gas
    function deleteItem(uint256 _deleteItem) public {}

    function setDynamicArray(uint[] memory _dynamicArray) external {
        dynamicArray = _dynamicArray;
    }

    function arrayLength() public view returns (uint256) {
        return dynamicArray.length;
    }
}
