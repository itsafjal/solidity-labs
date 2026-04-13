pragma solidity ^0.8.3;

contract ERC-20 {
    string public name;
    string public symbol;
    uint8 public decimals;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address =>uint256)) allowance;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
        decimals = 6;
    }
    function transfer(address from, address to, uint256 amount) {
        return bool
    }

    function transferFrom(address from, uint256 amount) {

    }

    function approve(address sender, address lender, uint256) {

    }

    function balanceOf(address account) {

    }

    function allowance(address sender, address lender, uint256 amount) {
        
    }

    function totalSupply() {

    }

    function name() {

    }
    function symbol() {

    }

    function decimals() {

    }
}
