// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

interface AggregatorV3Intreface {
    function decimals()external view returns (uint8);

    function descriptions()external view returns (string memory);

    function version()external view returns (uint256);

    function getRoundData(uint80 _roundID)
        external 
        view 
        returns(
            uint80 roundID,
            int256 answer,
            int256 startedAt,
            int256 updatedAt,
            uint80 answeredInRound
            );
    function latestRoundData()
        external 
        view 
        returns(
            uint80 roundID,
            int256 answer,
            int256 startedAt,
            int256 updatedAt,
            uint80 answeredInRound
            );
}
contract FundMe {
    uint256 public minimumUsd = 5;
    function Fund()  public payable {
       
        require(msg.value >= minimumUsd , "Send an amount greater than 1Eth");
        //the require statement says that if the first statement fails revert to the second statement
    }

//     function withdraw(uint )public payable {

//         require(msg.value> 1e9,"Send enough Eth");
//     }
    function getPrice() public {
        //
    }
    function getConversionRate() public {
        //
    }
   
}