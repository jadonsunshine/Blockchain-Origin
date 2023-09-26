// SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleFactoryinSimpleStorage.sol";
// if you want a contract to have everything like another contract you just import it in as done above 
// And then use the is keyword for Inheritance as done below
contract AddFiveStorage is SimpleStorage{
   // then you can add a function that is not in the other contract you want to inherit from say
   function sayHello() public  {
      //sayhello
   } 
   function store(uint256 _newnumber) public override {
      myfavouriteNumber = _newnumber + 5; 
   }
   //Here the overide keyword works in pairs where you'll need the virtual keyword in the same function or base function in the 
   //previous contract you are inheriting from.
}  