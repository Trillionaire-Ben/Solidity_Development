// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract InterfaceB{
    function welcome() external pure returns(string memory);
}

contract B{
    function welcome() external pure returns(string memory){
        return 'welcome Ben';
    }
}