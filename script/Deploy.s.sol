// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.15;

import { Script } from "forge-std/Script.sol";

import { LegacyWorks } from "src/LegacyWorks.sol";

/// @notice A very simple deployment script
contract Deploy is Script {
  /// @notice The main script entrypoint
  /// @return legacy The deployed contract
  function run() external returns (LegacyWorks legacy) {
    vm.startBroadcast();
    legacy = new LegacyWorks();
    legacy.mint(10);
    vm.stopBroadcast();
  }
}
