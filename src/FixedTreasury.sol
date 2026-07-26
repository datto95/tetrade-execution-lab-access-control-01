// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FixedTreasury {
    address public owner;
    mapping(address => uint256) public balances;

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function deposit() external payable {
        require(msg.value > 0, "zero deposit");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(amount > 0, "zero amount");
        require(balances[msg.sender] >= amount, "insufficient balance");

        balances[msg.sender] -= amount;
        (bool ok, ) = msg.sender.call{value: amount}("");
        require(ok, "transfer failed");
    }

    function sweep(address payable recipient) external onlyOwner {
        require(recipient != address(0), "zero recipient");
        recipient.transfer(address(this).balance);
    }
}
