// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// Write a function that sorts an array in ascending order and returns the result. 
// The array will be a fixed of 10 but the contents random. Your solution should implement the following interface:
contract Level_2 {
     function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory sortedArray){
          for (uint256 i = 0; i < 10; i++) {
            sortedArray[i] = unsortedArray[i];
        }

        // Sort the sorted array using bubble sort
        for (uint256 i = 0; i < 10; i++) {
            for (uint256 j = 0; j < 9 - i; j++) {
                if (sortedArray[j] > sortedArray[j + 1]) {
                    // Swap the elements if they are out of order
                    (sortedArray[j], sortedArray[j + 1]) = (sortedArray[j + 1], sortedArray[j]);
                }
            }
        }
    }
}