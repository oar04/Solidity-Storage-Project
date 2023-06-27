// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0;

contract SimpleStorage{

    //initialises unsigned integer variable to 0
    uint256 favNum;

    //structs are ways to define new types
    struct People{
        uint256 favNum;
        string name;
    }

    //arrays store a list of items, this is a dynamic array because no value is specified in the []
    People[] public people;

    //mapping is a dictionary like structure that has one value per key
    mapping(string => uint256) public nameToFavoriteNumber;


    People public person = People({favNum: 5, name: "Osman"});

    function store(uint256 _favNum) public{
        favNum = _favNum;
    }

    //keywords to define functions that don't require transactions, view and pure
    function retrieve() public view returns(uint256){
        return favNum;
    }
    //view reads a state from the blockchain, pure does some maths but doesnt save anywhere

    //add to an array
    function addPerson(string memory _name, uint256 _favNum) public{
        people.push(People(_favNum, _name));
        nameToFavoriteNumber[_name] = _favNum;
    }

}