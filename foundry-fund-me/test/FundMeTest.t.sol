pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        fundMe = new FundMe();
    }

    function testMiniDollarIsFive() public {
        assertEq(fundMe.MINIMUM_USD(), 5e16);
    }
    // uint256 number = 1;
    // function setUp() external {
    //     number = 2;
    // }
    // function testDemo() public view {
    //     console.log(number);
    //     console.log("Hello!");
    //     assertEq(number, 2);
    // }
}
