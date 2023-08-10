// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract SimpleStorage {
    //  Basic types in solidity: boolean ,uint, int, address, bytes
bool hasFavouriteNumber = true;
uint256 favouriteNumber = 88;
string favouriteNumberInText = "Eigty-Eight";
int256 favouriteInt = -88;
address myAddress = 0xD0c2e5779d9D23964200330ed39af6781bD6b84D;
bytes32 favouriteBytes = "mycat";

function store (uint256 _favouriteNumber) public {
    favouriteNumber = _favouriteNumber;
}
}