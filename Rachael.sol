// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RachaelToken is ERC20, Ownable {
    constructor() ERC20("RachaelToken", "RCL") {
         totalsupply = 1000000
        
        _mint (msg.sender, 1000000 * 10 ** decimals());
    }

    //function mint(address to, uint256 amount) public onlyOwner {
      //  _mint(to, amount);
    //}
    function buyToken (address receiver) external payable {
         require(msg.value > 0, "You cannot buy my RCL with 0ETH");

         uint256 amount = msg.value * 1000/10 **decimals();
         _mint (receiver, amount);
    }
}