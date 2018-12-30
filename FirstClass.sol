pragma solidity ^0.5.0;


contract firstClassContract{
    string private stringVariable = "Variable name";
    int private unsignedInteger = 10;

    function setStringVariable(string memory newVariable) public {
        stringVariable = newVariable;
    }

    function getStringVariable() public view returns (string memory){
        return stringVariable;
    }

}

