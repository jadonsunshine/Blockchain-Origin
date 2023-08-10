// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
   uint256 public favouriteNumber;
  uint256 public testNum;

function store (uint256 _favouriteNumber) public {
    favouriteNumber = _favouriteNumber;

    testNum = favouriteNumber--; 
    
}
// They are different types of visibility : but the default is internal 
//So when you dont write any visibility it automatically falls back to {interal}
//Visibilities ave one of tis four { Public , Private , External , Internal}
//creating a getter function that does exactly what the public keyword does
function retrive ()public view returns(uint256){
  return favouriteNumber;
}
}