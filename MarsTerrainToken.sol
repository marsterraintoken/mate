// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ERC20.sol";
import "Pausable.sol";
import "Ownable.sol";

contract MarsTerrainToken is ERC20, Pausable, Ownable {
    constructor() ERC20("Mars Terrain Token", "MATE") {
        _mint(msg.sender, 144798500000000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}
