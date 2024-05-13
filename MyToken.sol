// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Nana is ERC20 {
    constructor() ERC20("Nana", "TKN") {
        _mint(msg.sender, 400);
    }

    //Mint new tokens and assign them to the specified.
    function mint(address _receiver, uint256 token) public {
        require(_receiver != address(0));
        _mint(_receiver, token);
    }

    // Burn tokens from the sender's balance, and token must be greater than 0.
    function burn(uint256 token) public {
        require(token > 0);
        _burn(msg.sender, token);
    }

    // Transfer tokens from the sender's balance to the specified recipient.
    function transfer(address _recipient, uint256 token) public override returns (bool) {
        _transfer(msg.sender, _recipient, token);
        return true;
    }
}
