// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0;

import "./SimpleStorage.sol"; 
//this is equivalent to copying and pasting SimpleStorage.sol in

contract StorageFactory is SimpleStorage{

    SimpleStorage[] public SimpleStorageArray;

    function createSimpleStorageContract() public {

        //creating an object of type SimpleSrorage
        SimpleStorage simpleStorage = new SimpleStorage();
        SimpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //in order to interact with a contrac t an address and ABI is required
        SimpleStorage simpleStorage = SimpleStorage(address(SimpleStorageArray[_simpleStorageIndex]));

        //now all of the contracts functinos can be accessed
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage simpleStorage = SimpleStorage(address(SimpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve();

        //can also be refactored into return  SimpleStorage(address(SimpleStorageArray[_simpleStorageIndex])).retrieve()

    }

}