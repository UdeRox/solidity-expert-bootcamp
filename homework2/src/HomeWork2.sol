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

    event IndexItemRemoved(uint256 indexed _index, uint indexed _item);

    constructor(uint256[] memory _iniDynamicdArray) {
        dynamicArray = _iniDynamicdArray;
    }

    //delete function
    // items are choose randomly
    // after deleting no gaps
    // opt gas
    function deleteItem(uint256 _deleteItem) public {
        uint256 indexFound = findIndexOfItem(_deleteItem);
        if (indexFound != 0) removeIndex(indexFound);
    }

    //Find the item in the array
    function findIndexOfItem(uint256 _item) public view returns (uint256) {
        uint256 arrLength = getArrayLength();
        for (uint i = 0; i < arrLength; i++) {
            if (dynamicArray[i] == _item) return i;
        }
        revert ItemNotFoundError();
    }

    function removeIndex(uint256 _removeIndex) public {
        uint256 lastIndex = getArrayLength() - 1;
        if (_removeIndex > lastIndex) revert IndexOutBoundError();
        uint256 item = dynamicArray[_removeIndex];
        dynamicArray[_removeIndex] = dynamicArray[lastIndex];
        dynamicArray.pop();
        emit IndexItemRemoved(_removeIndex, item);
    }

    function setDynamicArray(uint[] memory _dynamicArray) external {
        dynamicArray = _dynamicArray;
    }

    function getArrayLength() public view returns (uint256) {
        return dynamicArray.length;
    }
}
