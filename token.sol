// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ourtoken {
  // Public variables(let's describe public variables)
  string public tokenName = "First token";
  string public tokenabbry = "First tkn";
  uint public totalSupply = 0;

  // Mapping variable
  mapping(address => uint) public balances;

  // Mint function(It is used to create tokens)
  function mintToken(address _address, uint _value) public {
    totalSupply += _value;
    balances[_address] += _value;
  }

  // Burn function(It is used to delete tokens)
  function burnToken(address _address, uint _value) public {
    if (balances[_address] >= _value) {
      totalSupply -= _value;
      balances[_address] -= _value;
    }
  }
}
