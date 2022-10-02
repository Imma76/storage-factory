// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage{
    function assignNumber(uint256 newNumber) public override{
        chikasNumber = newNumber + 5;
    }   
}
