// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.17;
//Safe
contract safeMaths{
    function testUnderFlow() public pure returns (uint){
        uint x = 0;
        x--;
        return x;
    }
    //Here, the function initializes a uint (unsigned integer) variable x to 0 and then decrements it by 1.
    // Since uint variables in Solidity can't hold negative values, this operation will result in an underflow.
    function uncheckedtestUnderFlow() public pure returns (uint){
        uint x = 0;
       unchecked { x--;}
        return x;
    }
//    So, in this function, when x is decremented by 1, instead of the transaction failing,
//    x will wrap around to its maximum value (2^256 - 1),demonstrating the underflow condition. 
//    This function will return the maximum possible value for a uint variable in Solidity.
}