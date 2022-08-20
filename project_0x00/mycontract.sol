// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract mycontract {
    uint value;
    uint[] array; //storage memory

    function getvalue() external view returns(uint) { // 'view' keyword makes this fn read only
        return value;
    }

    // fn to change/modify the 'value' variable inside the blockchain

    function setvalue(uint _value) external { //no return required from this fn
        value = _value;
        uint[] memory tax = new uint[](3); // memory keyword used because it's a memory array

        tax[1] = 10;
        array.push(1);
        array.push(11);      
    }

    // accepts array as argument, fn uses external as visibilty
    // function foo(uint[] tax) external pure returns(uint[]){}

    /**
    * Accepts array as argument, fn uses public, private and internal as visiblity
    */
    //function vis(uint[] memory tax) public pure returns(uint[] memory){}
    
}