// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import { Foo } from "../src/Foo.sol";

import "forge-std/Script.sol";
// Create2 Deployer Interface
// https://github.com/pcaversaccio/create2deployer
interface ICreate2Deployer {
    function deploy(uint256 value, bytes32 salt, bytes memory code) external;

    function computeAddress(bytes32 salt, bytes32 codeHash) external returns (address);
}

contract RunComputeAddress is Script {
    function run() external {
        ICreate2Deployer(0x35Da41c476fA5c6De066f20556069096A1F39364).computeAddress(0x7badf1fa31fe4f52b90103db6e88303a88bfdc7fa4d3374b79a5695867fa6354, 0x09b3b9759dc7b325ae5df9ccf1276c0538219aa9d01dd6c4e189a7b38743c8f9);
    }
}