// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract mycontract2{
    // learning to create a struct
    struct User {
        address adr;
        uint value;
        string name;
    }
    //array of structs
    User[] Uarr;
    // where the contents inside the struct body are it's fields

    function one(string calldata dname) external view{
        // calling the struct as an instance here, first method
        User memory user1 = User(msg.sender, 0, dname);
        User memory user2 = User(msg.sender, 0, dname);
        // second method
        User memory user3 = User({name: dname, value: 0, adr: msg.sender});
    }
}