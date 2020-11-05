pragma solidity ^0.6.0;

contract SharedWallet {
    
    address public owner;
    
    constructor() public{
        owner = msg.sender;
        
    }
    
    //in 0.6.0 and later fallback function is deeclare by using kywork fallback rather than just a naked function
    //the fallback function esntially allows the deposition of funds in the contracts, if no spcific function is declared.
    fallback ()  external payable{
        
    }
    
    
    function withdrawMoney (address payable _to, uint _amount) public{
        require(owner == msg.sender, "you are not allowed");
        _to.transfer(_amount);
        
    }
}
