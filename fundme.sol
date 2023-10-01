// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interfaces.sol";
    uint256 public minimumUsd = 5;
    function Fund()  public payable {
       
        require(msg.value >= minimumUsd , "Send an amount greater than 1Eth");
        //the require statement says that if the first statement fails revert to the second statement
    }

//     function withdraw(uint )public payable {

//         require(msg.value> 1e9,"Send enough Eth");
//     }
    function getPrice() public {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        //ABI
    }
    function getConversionRate() public {
        //
    }

}