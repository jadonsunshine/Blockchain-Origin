// SPDX-License-Identifier : MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleFactoryinSimpleStorage";

contract FundMe{
    uint256 public minimumUsd = 5;
    function Fund(uint256 myvalue)  public payable {
        myvalue = myfavouriteNumber * 10;
        require(msg.value >= minimumUsd , "Send an amount greater than 1Eth");
        //the require statement says that if the first statement fails revert to the second statement
    }

    function withdraw(uint )public {

        require(msg.sender< 1e9);
    }
}