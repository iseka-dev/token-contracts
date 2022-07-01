// SPDX-License-Identifier:MIT
pragma solidity^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract TicketSystem is ERC1155, Ownable {

    // constructor is executed when the factory contract calls its own deployERC1155 method
    constructor(
        uint[] memory _ticket_id,
        uint[] memory _amount_tickets
    ) ERC1155("") {

        _mintBatch(msg.sender, _ticket_id, _amount_tickets, "");

    }

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {_mint}.
     *
     * Emits a {TransferBatch} event.
     *
     * Requirements:
     *
     * - `ids` and `amounts` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts
    ) external onlyOwner {
        _mintBatch(to, ids, amounts, "");
    }
}
