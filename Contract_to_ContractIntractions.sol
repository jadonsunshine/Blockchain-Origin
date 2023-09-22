//SPDX=License-Identifier : Unlicensed
pragma solidity ^0.8.17;

import {SimpleStorage} from "./SimpleStorage.sol";
 
contract StorageFactory{

SimpleStorage public simpleStorage; 
SimpleStorage[] public listOfSimpleStorageContracts;

function createSimplestorageContract()public{
    SimpleStorage newsimpleStorageContract= new SimpleStorage();
    listOfSimpleStorageContracts.push(newsimpleStorageContract);
}

} 