// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import 'mycontract4B.sol';

contract A{
    //step 2
    address addrB;

    //Step 3: fn to set address of B in A(mycontract4)
    function setaddB(address _addrB) external {
        addrB = _addrB;
    }

    // Step 4; fn to call welcome()
    function callB() external view returns(string memory){
        // we create a pter to point to contract B, pter datatype is set to be contract name
        InterfaceB pter = InterfaceB(addrB);
        return pter.welcome();
    }
}

/*// step 1
contract B{
    function welcome() external pure returns(string memory){
        return 'welcome Ben';
    }
}*/