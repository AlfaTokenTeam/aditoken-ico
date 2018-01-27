pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Aditoken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Aditoken(address _owner)  UpgradeableToken(_owner) {
    name = "Aditoken";
    symbol = "ADJ";
    totalSupply = 500000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}