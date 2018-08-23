pragma solidity 0.4.24;


import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";
import "../utils/OwnableContract.sol";
import "../token/WBTCInterface.sol";


contract WBTC is WBTCInterface, StandardToken, DetailedERC20, MintableToken, BurnableToken, PausableToken,
    OwnableContract {

    /* solhint-disable no-empty-blocks */
    constructor() public DetailedERC20("Wrapped BTC", "WBTC", 8) { }
    /* solhint-enable no-empty-blocks */

    function burn(uint value) public onlyOwner {
        super.burn(value);
    }

    function finishMinting() public onlyOwner returns (bool) {
        return false;
    }

}