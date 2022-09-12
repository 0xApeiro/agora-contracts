import { ERC20 } from "solmate/tokens/ERC20.sol";

contract Aero is ERC20 {
  constructor() ERC20("Aero", "AERO", 6) {}

  function mint(uint256 amount) external {
    _mint(msg.sender, amount);
  }
}
