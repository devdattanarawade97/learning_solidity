// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// Challenge 1: Writing Your First Smart Contract
// Goal:
// Write a simple Solidity smart contract that stores a number and allows updating it.

// Requirements:
// Create a contract named StorageContract.
// Declare a uint variable storedNumber.
// Implement a function setNumber(uint _num) to update storedNumber.
// Implement a function getNumber() that returns storedNumber.
// Hints:
// Use uint for numbers.
// Use public visibility for functions.
// The setNumber function should be able to modify state, so it should be external or public.
// The getNumber function should return the value and be view.


contract StorageContract{

    uint storedNumber =0;

    function setNumber(uint _num) public {
        storedNumber=_num;
    }

    function getNumber() public view returns(uint){
       
       return storedNumber;
    }
    

}