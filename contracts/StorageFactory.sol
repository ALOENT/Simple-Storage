// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    //type visibility name
    SimpleStorage[] public LISTofSimpleStorageContracts;
    

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        LISTofSimpleStorageContracts.push(newSimpleStorage);
    }

    function sfStore(uint256 _simplestorageIndex, uint256 _newSimplestorageNumber) public {
        //Address
        //ABI (Application Binary Interface)
        SimpleStorage mySimpleStorage = LISTofSimpleStorageContracts[_simplestorageIndex];
        mySimpleStorage.store(_newSimplestorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = LISTofSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }

}