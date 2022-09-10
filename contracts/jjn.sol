// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract jjn is ERC20 {
    constructor() ERC20("jnjn", "jjn") {
        _mint(msg.sender, jnjn);
    }
}