//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;


import "./SimpleStorage.sol";
 
contract StorageFactory{

SimpleStorage public simpleStorage;

function createSimplestorageContract() public{
    simpleStorage = new SimpleStorage();
    //the new keyword tells solidity to deploy the specified contract
}
//still the same as the simpleFactory.sol code 
}