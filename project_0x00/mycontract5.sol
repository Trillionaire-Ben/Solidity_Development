// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract mycontract5{

    uint256 public favriteno;

    mapping(string => uint256) public nameofamount;

    struct Peeps{
        uint favno;
        string name;
    }

    // Peeps public people = Peeps({amount: 2, name: "john"});
    Peeps[] public people;

    function store(uint _fav) public{
        favriteno = _fav;
    }

    function display(string memory _name, uint _amount) public{
        Peeps memory newpeep = Peeps({favno: _amount, name: _name});
        people.push(newpeep);
        nameofamount[_name] = _amount;
    }
}
