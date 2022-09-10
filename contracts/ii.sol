// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ii is ERC20 {
    constructor() ERC20("ii", "ii") {
        _mint(msg.sender, ii);
    }
}// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ii is ERC20 {
    constructor() ERC20("ii", "ii") {
        _mint(msg.sender, ii);
    }
}