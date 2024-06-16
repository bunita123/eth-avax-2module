// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract proxyChallenge{
    uint public num ;
    address public sender;
    uint public value;

    function setNum(uint _num)public payable{
        num= _num;
        sender = msg.sender;
        value = msg.value;
    }
}
contract proxy{
    uint public num;
    address public sender;
    uint public value;

    function setNum(address _addr, uint _num)public payable{
        (bool success, bytes memory data) = _addr.delegatecall(abi.encodeWithSignature("setNum(uint)",_num));
        require(success, "Call failed");
        
    }
}
