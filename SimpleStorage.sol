// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //solidity version

contract SimpleStorage {

    struct Person {
        uint256 age;
        string name;
    }

    //dynamic array
    Person[] public ListOfPeoples;

    mapping(string => uint256) public NAMEtoAGE;

    function addPerson(string memory _name, uint256 _age) public {
        ListOfPeoples.push(Person(_age, _name));
        NAMEtoAGE[_name]=_age;
    }

}