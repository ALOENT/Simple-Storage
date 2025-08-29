// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // solidity version

contract SimpleStorage {

    struct Person {
        uint256 age;
        string name;
    }

    // dynamic array
    Person[] public ListOfPeoples;

    mapping(string => uint256) public NAMEtoAGE;

    uint256  favoriteNumber; // storage ke liye variable

    function addPerson(string memory _name, uint256 _age) public {
        ListOfPeoples.push(Person(_age, _name));
        NAMEtoAGE[_name] = _age;
    }

    // ye function StorageFactory ke sfStore() se call hoga
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    // ye function StorageFactory ke sfGet() me use hoga
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
