pragma solidity ^0.5.0;

import /usr/local/lib/node_modules/web3/;

provider = new Web3.providers.HttpProvider("http://localhost:8545")
web3 = new Web3(provider)

contract firstClassContract{
    address public creator; //address of contract creator to be defined
    uint256 public totalSupply; //total coin supply
    mapping (address => uint256) public balances; //like a dictionary, an address represents
                                                  // a positive integer
    // new variables can't be created
    //the above ones are created during contract creation

    //below is the constructor function called only when the contract is created
    function firstClassContract() public{
        creator = msg.sender; //the creator of the contract
        //msg.sender is automatically generated on contract deploy
        totalSupply = 100; //sets the total supply
        balances[creator] = totalSupply; //gives all the supply to the contract creator
    }

    function balanceOf(address memory owner) public view returns(uint256 memory){
        return balances[owner];
    }


    function sendTokens(address memory receiver, uint256 memory amount) 
        public returns(bool){
            address owner = msg.sender; //this is the caller of the function
            
            require(amount > 0); //the caller has to have a balance of more than zero tokens
            require(balances[owner] >= amount); //the balance must be bigger than the transaction amount
            
            balances[owner] -= amount; //deduct from the balance of the sender first
            balances[receiver] += amount; //add to the balance of the receiver after
            return true;
        }
    }

    function setStringVariable(string memory newVariable) public {
        stringVariable = newVariable;
    }

    function getStringVariable() public view returns (string memory){
        return stringVariable;
        //test visual studio version control
    }

}

