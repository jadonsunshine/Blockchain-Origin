// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interfaces.sol";
 

contract FundMe {
    uint256 public minimumUsd = 5 * 1e18;
    //or ....5e18
     address[] public funders;
    //Now lets map each address to the amount funded
    //so we can not only see all the address but also see the amount each address has sent to us 
    mapping (address funder => uint256 amountFunded) public addressToAmountFunded; 
    function Fund()  public payable {
       require(getConversionRate(msg.value) >= minimumUsd , "Send an amount greater than 5$");
        //the require statement says that if the first statement fails revert to the second statement
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender]=  addressToAmountFunded[msg.sender] + msg.value; 
        // which I in turn wrote as ...
        // addressToAmountFunded[msg.sender]+= msg.value {Not sure if this would work sha}
    }

//     function withdraw(uint )public payable {

//         require(msg.value> 1e9,"Send enough Eth");
//     }
    function getPrice() public view returns(uint256) {
        //address
        //ABI
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
       ( ,int256 price,,,) = priceFeed.latestRoundData();  
       //price of ETH in USD
       return uint256(price * 1e10);
    }
    function getConversionRate(uint256 ethAmount) public view returns(uint256) {
        //here you presumably get a price of 1Eth = 2893.63722537e10
        //the above was gotten from the getPrice() function whic we then multiplied with 1e10
        uint256 ethPrice = getprice();
        //here we assigned the value gotten from the get price function to the uint256 variable ethPrice
        //2893637225370000000000
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        // here we created another uint256 variable ethAmountInUsd which we gave the value of ....
        // the variable declared above multiplied the eth amount specified before the function was called ...
        //which is also in the form ethamount * 1e18  [presumably 0.2eth]
        //200000000000000000
        //that is 
        //( 2893637225370000000000 * 200000000000000000 ) / 1e18
        return ethAmountInUsd;
        // 578727445074000000000
    }
   function getVersion() public view returns(uint256){ 
       return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
   }
}