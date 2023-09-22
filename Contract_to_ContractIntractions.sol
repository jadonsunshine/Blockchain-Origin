//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

import {SimpleStorage} from "./SimpleStorage.sol";
 
contract StorageFactory{

SimpleStorage public simpleStorage; 
SimpleStorage[] public listOfSimpleStorageContracts;

function createSimplestorageContract()public{
    SimpleStorage newsimpleStorageContract= new SimpleStorage();
    listOfSimpleStorageContracts.push(newsimpleStorageContract);
}
//now with each time you create by clicking the orange "create button" on the deploy page you create a new instance of the SimpleStorage contract
 function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
    //two things needed for contract to contract interaction
    //address
    //ABI
    SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
    mySimpleStorage.store(_newSimpleStorageNumber);
    //this code below would still work exactly like the one above;
      
   listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
 }
 function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
    //this code would still work here
     SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
     return mySimpleStorage.retrieve();
     //here this way below
    // return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
 }
}
