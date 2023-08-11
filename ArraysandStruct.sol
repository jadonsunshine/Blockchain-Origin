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

  function retrive ()public view returns(uint256){
    return myfavouriteNumber;
  }
  //What of when you want to add for all you friends typing them like that is very stressfull so....
  //Person public myFriendone = Person( {favouriteNumber : 19, name : "Sarge");
  //Person public myFriendtwo = Person( {favourite   Number : 19, name : "Sarge");
  //Person public myFriendthree = Person( {favouriteNumber : 19, name : "Sarge");
  //We'll do it like an array


  //dynamic array : meaning it can grow and shrink in size
  Person[] public listOfPeople;
  //static array : meaning it can not grow and shrink in size
  // Person[3] public listOfPeople;
  // #Now we can write it like this or #
  //        function addfriend(string memory _name, uint256 _favouriteNumber)  public {
  //   Person memory newPerson = Person( _favouriteNumber , _name);
  //   listOfPeople.push(newPerson);
  // }
  // #Like this#
      function addfriend(string memory _name, uint256 _favouriteNumber)  public {
    listOfPeople.push(Person( _favouriteNumber , _name));
  }
  // CODE STILL RUNS
}
