// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;
// for more understanding check fundmev1.sol
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interfaces.sol";
 using PriceConverter for uint256;
library PriceConverter {
       function getPrice() public view returns(uint256) {
        //address
        //ABI
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
       ( ,int256 price,,,) = priceFeed.latestRoundData();  
       //price of ETH in USD
       return uint256(price * 1e10);
    }
    function getConversionRate(uint256 ethAmount) public view returns(uint256) {
      
        uint256 ethPrice = getprice();
       
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
       
        return ethAmountInUsd;
    
    }
   function getVersion() public view returns(uint256){ 
       return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
   }
}