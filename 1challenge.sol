// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables{
    uint256 public storedNum;
    
    function set(uint256 newValue)public{
        storedNum = newValue;
    }

    function add(int a, int b)public pure returns(int){
       int sum = a + b;
        return sum;
    }

        function multiply(int a, int b)public pure returns(int){
       int mul = a * b;
        return mul;
    }
       
}
