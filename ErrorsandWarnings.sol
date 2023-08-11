// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
   uint256  myfavouriteNumber;
 
  uint256[] listOfFavouriteNumbers;
  //In solidity you can create a new data type using the struct keyword
  struct Person{
    uint256 favouriteNumber;
    string name;
  }
  Person public myFriend = Person( 19, "Sarge");
  // We can be more Explicit and write 
  //Person public myFriend = Person( {favouriteNumber : 19, name : "Sarge");
  //We would still have the same result
  function store (uint256 _favouriteNumber) public {
      myfavouriteNumber = _favouriteNumber;
   
  }
//Errors are the red exclamation marks which means that the code is broken and cannot deploy unless fixed
//Warnings are the yellow which means that something is wrong but it will still deploy
 
 
  // CODE STILL RUNS
  //
}
