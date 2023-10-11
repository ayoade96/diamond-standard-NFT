// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "../interfaces/IERC20.sol";
import "../Diamond.sol";

contract DiamondERC20 is DiamondBase, IERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _initializeDiamondOwner(msg.sender);
        _mint(msg.sender, 1000000 * 10**18); // Initial supply: 1,000,000 tokens
    }

    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal override {
        
        super._transfer(sender, recipient, amount);
    }
}
