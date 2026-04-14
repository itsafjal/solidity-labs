// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract ERC201 {
    mapping(address => uint256) public balanceOf;
    uint256 public totalSupply;
    mapping(address owner => mapping(address spender => uint256 allowance))
        public allowance;

    string public name = "TheWorld";
    string public symbol = "TWC";
    uint8 public decimals = 10;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approve(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    function transfer(address to, uint256 amount) public returns (bool) {
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) public returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approve(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public returns (bool) {
        require(allowance[from][msg.sender] >= amount, "not allowed to spend");
        allowance[from][msg.sender] -= amount;
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
        emit Transfer(from, to, amount);
        return true;
    }

    function balanceOF(address account) public view returns (uint256) {
        return balanceOf[account];
    }
}
