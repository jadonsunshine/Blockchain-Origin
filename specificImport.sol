//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;


// import "./SimpleStorage.sol";
//Lets say we have multiply contract in our file "SimpleStorage.sol"
//If we import it like we did above we would be importing the multiply contract together 
//so here is another way it could be done
import {SimpleStorage} from "./SimpleStorage.sol";
// using the syntax ''' import { name of contract you are trying to Import} from "./name of file.sol"
// import {SimpleStorage, Madehome } from "./SimpleStorage.sol";
//Also use the sequence above to import multiply sequence from the same file
 
contract StorageFactory{

SimpleStorage public simpleStorage;

function createSimplestorageContract() public{
    simpleStorage = new SimpleStorage();
}

}