// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract mycontract3{
    // to track the amount of ether sent from individual address
    mapping(address => uint) balances;

    //  fn to send ether to smart contract, non-view function
    function recieve_ether() external payable {
        // the if sets a threshold limit to cancel out the transaction
        if(msg.value < 1000){
        //in place of 1000, we can use some built in transfer keyword like ether e.g 1 ether
            revert();
        }
        balances[msg.sender] == msg.value;
    }

    // fn to return the balance of the address after sending the ether
    function balance_check() external view returns(uint) {
        return address(this).balance;
    }
}

contract transfer_coin{
    address payable[] recieve;

    // to send from smart contract to other SC/addreses
    function send_ether(address payable reciever_add) external{
        reciever_add.transfer(10 ether);
        // can use .send in place of .transfer
    }
}
