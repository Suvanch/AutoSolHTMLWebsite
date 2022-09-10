// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract jjj is ERC20 {
    constructor() ERC20("asas", "jjj") {
        _mint(msg.sender, jjj);
    }
}