ERC1155 token generator smart contracts are listed below.
The were builded accumulatively, so each one inherits the properties of previous
smart contracts.


1. 1155-tkt.sol
  This is an erc 1155 token generator smart contract.
  It lets a user to deploy a smart contract, hence generating an specific token,
  and minting it to the deployer address.

  Available functions:
  - safeBatchTransferFrom
  - safeTransferFrom
  - transferOwnerShip
  - SetApprovalForAll ---- ??
  - balanceOf
  - balanceOfBatch
  - isApprovedForAll ---- ??
  - owner
  - supports interface ---- ??
  - uri


2. 1155-mintable.sol
  This is also an erc 1155 token generator smart contract.
  It lets a user to deploy a smart contract, hence generating an specific token,
  and minting it to the deployer address.
  The minting action can be repeated to generate new tokens, or a new amount
  of the previouslly existing tokens.



3. 1155-metadata.sol

4. 1155-multiple-tokens.sol

10. 1155-TokenFactory
