// SPDX-License-Identifier:MIT
pragma solidity^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract TicketSystem is ERC1155, Ownable {

    // constructor is executed when the factory contract calls its own deployERC1155 method
    constructor(
        uint _ticket_id,
        uint _amount_tickets
    ) ERC1155("") {

        _mint(msg.sender, _ticket_id, _amount_tickets, "");

    }

}
