pragma solidity ^0.4.24;

import "../open-zeppelin-contracts/token/ERC20/IERC20.sol";
import "../open-zeppelin-contracts/crowdsale/validation/TimedCrowdsale.sol";
import "../open-zeppelin-contracts/crowdsale/validation/CappedCrowdsale.sol";
import "../open-zeppelin-contracts/crowdsale/emission/AllowanceCrowdsale.sol";

contract TCACrowdsale is TimedCrowdsale, CappedCrowdsale, AllowanceCrowdsale {
    constructor (
        uint256 openingTime,
        uint256 closingTime,
        uint256 rate,
        address wallet,
        IERC20 token,
        uint256 cap,
        address tokenWallet
    )
        public
        Crowdsale(rate, wallet, token)
        TimedCrowdsale(openingTime, closingTime)
        CappedCrowdsale(cap)
        AllowanceCrowdsale(tokenWallet)
    {}
}