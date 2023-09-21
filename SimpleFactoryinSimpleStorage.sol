//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    uint256  myfavouriteNumber;
    
    uint256[] listOfFavouriteNumbers;
    //In solidity you can create a new data type using the struct keyword
    function addFavouriteNumber(uint _favouriteNo)public{
        myfavouriteNumber =_favouriteNo;
    }
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
    

    mapping(string => uint256)public age; 
    //dynamic array which means that a limit isn't specified yet
        Person[] public listOfPeople;
    //Memory , storage and Calldata 
        function addperson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber,_name));
        age[_name] = _favouriteNumber;
        }
    
}
 
contract StorageFactory{
//type visibility name;
//EG: uint256 public age
SimpleStorage public simpleStorage; 
//we also have the type Simplestorage 

function createSimplestorageContract()  public{
    simpleStorage = new SimpleStorage();
}

}