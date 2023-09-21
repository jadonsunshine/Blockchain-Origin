//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    uint256  myfavouriteNumber;
 
    //In solidity you can create a new data type using the struct keyword
  
    struct Person { 
        uint256 age; 
        string name;
    }
    Person public myFriend = Person( 19, "Sarge");
    // We can be more Explicit and write 
    //Person public myFriend = Person( {age : 19, name : "Sarge");
    //We would still have the same result
    function store (uint256 _favouriteNumber) public {
        myfavouriteNumber = _favouriteNumber; 
    
    }

    function retrieve ()public view returns(uint256){
        return myfavouriteNumber;
    }
    function addfriend(string memory fname, uint256 _age)  public {
        listOfPeople.push(Person( _age , fname));
    }
    // CODE STILL RUNS
    string public myName = "Jadon";
    //A string is actually an array of bytes in solidity

    Person public person = Person({age: 20 , name : "Jadon"});
    

  
    
        Person[] public listOfPeople;
        //here you use the mapping like a key where you map names yo a particular uint which in this case is the age 

        mapping(string => uint256)  public age; 
 
        function addperson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber,_name));
        age[_name] = _favouriteNumber;
        }
    
}
 
contract StorageFactory{

SimpleStorage public simpleStorage; 

function createSimplestorageContract()public{
    simpleStorage = new SimpleStorage();
}

}