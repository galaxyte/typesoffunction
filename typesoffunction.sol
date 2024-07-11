// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ParthToken is ERC20 {
    address public admin;

    string public customName = "MyToken";
    string public customSymbol = "MTK";
    uint256 public customTotalSupply;

    mapping(address => uint256) public customBalances;

    constructor() ERC20("Parth", "PRT") {
        admin = msg.sender;
        _mint(address(this), 100 * 10 ** decimals());
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "This does not belong to the owner");
        _;
    }

    function createTokens(address recipient, uint256 quantity) public onlyAdmin {
        uint balance = balanceOf(address(this));
        require(balance >= quantity, "Not sufficient balance");
        _transfer(address(this), recipient, quantity);
    }

    function destroyTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function customMint(address _to, uint256 _value) public onlyAdmin {
        customTotalSupply += _value;
        customBalances[_to] += _value;
    }

    function customBurn(address _from, uint256 _value) public onlyAdmin {
        require(customBalances[_from] >= _value, "Insufficient balance to burn");

        customTotalSupply -= _value;
        customBalances[_from] -= _value;
    }
}
