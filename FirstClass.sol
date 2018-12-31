pragma solidity ^0.5.0;

import /usr/local/lib/node_modules/web3/;

provider = new Web3.providers.HttpProvider("http://localhost:8545")
web3 = new Web3(provider)

contract firstClassContract{
    string private stringVariable = "Variable name";
    int private unsignedInteger = 10;

    function setStringVariable(string memory newVariable) public {
        stringVariable = newVariable;
    }

    function getStringVariable() public view returns (string memory){
        return stringVariable;
        //test visual studio version control
    }

}

