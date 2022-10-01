// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;
    function createNewSimpleStorageContract()public{
        SimpleStorage simpleStorageContract = new SimpleStorage();
        simpleStorageArray.push(simpleStorageContract);
    }

   

    function addingNumberToSimpleStorage(uint256 newNumber, uint256 contractIndex) public{
        SimpleStorage simpleStorageContract = simpleStorageArray[contractIndex];
        simpleStorageContract.assignNumber(newNumber);
    }

    function retrievingNumberFromSimpleStorage(uint256 contractIndex)public view returns (uint256){
        SimpleStorage simpleStorageContract = simpleStorageArray[contractIndex];
        return simpleStorageContract.retrieveChikasNumber();
    }
}
