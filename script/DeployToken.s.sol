// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.15;

import { Script } from "forge-std/Script.sol";

import { Aero } from "src/Aero.sol";

/// @notice A very simple deployment script
contract DeployToken is Script {
  /// @notice The main script entrypoint
  /// @return aero The deployed contract
  function run() external returns (Aero aero) {
    vm.startBroadcast();
    aero = new Aero();
    aero.mint(10);
    vm.stopBroadcast();
  }
}
