// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract mycontract2{
    //Events - using the indexed keyword filters the event to be push to consumers
    event Web3E(
        uint date,
        address from,
        address to,
        uint amount
    );
    // learning to create a struct
    struct User {
        address adr;
        uint value;
        string name;
    }
    //array of structs
    User[] uarr;
    User[] richard;
    uint richie;
    // where the contents inside the struct body are it's fields

    function one(string calldata dname) external{
        //using a storage memory
        User storage ptr = richard[0];
        ptr.name = 'anything';

        //using a memory
        User memory rex = uarr[0];
        rex.value = 2;  

        // calling the struct as an instance here, first method
        User memory user1 = User(msg.sender, 0, dname);
        user1.adr;
        // second method
        User memory user3 = User({name: dname, value: 0, adr: msg.sender});
        user3.name;
    }

    //emitting an event in a smart contract
    function two(address to, uint amount) external{
        emit Web3E(block.timestamp, msg.sender, to, amount);
    }
}