// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
 
contract SimpleStorage{
    uint256 public chikasNumber;
    function assignNumber(uint256 newNumber)public virtual{
        chikasNumber = newNumber;
    }
    struct Car{
        string doors;
        uint256 tires;
    }
    Car[] public allCars;
    function retrieveChikasNumber() public view returns (uint256){
        return chikasNumber;
    }
    function addToCars(uint256 tires, string memory doors)public{
        allCars.push(Car({doors:doors, tires:tires}));
    }

}