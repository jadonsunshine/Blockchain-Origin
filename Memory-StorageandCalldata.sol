// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract SimpleStorage {

string public myName = "Jadon";
//A string is actually an array of bytes in solidity

Person public person = Person({PositiveNumber: 8 , name : "Jadon"});
 
struct Person { 
    uint256 PositiveNumber;
    string name;
}
 //dynamic array which means that a limit isn't specified yet
    Person[] public listOfPeople;
//Memory , storage and Calldata 
    function addperson(string memory _name, uint256 _favouriteNumber) public {
    listOfPeople.push(Person(_favouriteNumber,_name));
    }
    //Memory and calldata are used for variables that you just want to exist temporarily ,
    //it would exist only when the function is called
    //Now Calldata is a temporary variable that shouldn't and hence can't be modified
    //While Memory can be modified
    //variables except strings in functions are default memory
    //while variable outside function are default storage
    //INCONCL:Memory and Calldata both mean Temporary variable. 
    //INCONCL:Struct,mapping and arrays need to be given either the memory or calldata keyword in a function
}
 