// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// interface Isolution1 {
//     function solution(
//         uint256[2][3] calldata x,
//         uint256[2][3] calldata y
//     ) external pure returns (
//         uint256[2][3] memory
//     );
// }

contract Level_1 {
    function solution(
        uint256[2][3] calldata x,
        uint256[2][3] calldata y
    ) external pure returns (uint256[2][3] memory) {
        require(x.length == 2 && y.length == 2, "Array index is out of bounds");

        uint256[2][3] memory resultMatrix;

        for (uint256 i = 0; i < 3; i++) {
            require(x[i].length == 2 && y[i].length == 3, "Array index is out of bounds");

            for (uint256 j = 0; j < 3; j++) {
                resultMatrix[i][j] = x[i][j] + y[i][j];
            }
        }

        return resultMatrix;
    }
}
