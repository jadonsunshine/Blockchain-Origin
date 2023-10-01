// SPDX-License-Identifier : MIT
pragma solidity ^0internal
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interfaces.sol";

library PriceConverter{
      function getPrice() internal view returns(uint256) {
        //address
        //ABI
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
       ( ,int256 price,,,) = priceFeed.latestRoundData();  
       //price of ETH in USD
       return uint256(price * 1e10);
    }
    function getConversionRate(uint256 ethAmount) internal view returns(uint256) {
        //here you presumably get a price of 1Eth = 2893.63722537e10
        //the above was gotten from the getPrice() function whic we then multiplied with 1e10
        uint256 ethPrice = getprice();
        //here we assigned the value gotten from the get price function to the uint256 variable ethPrice
        //2893637225370000000000
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
       
        return ethAmountInUsd; 
        // 578727445074000000000
    }
   function getVersion() internal view returns(uint256){ 
       return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
   }
}