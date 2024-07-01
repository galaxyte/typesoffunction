# ParthToken

## Overview

The `ParthToken` contract is an ERC20-compliant token written in Solidity. It serves as a basic example of creating a custom ERC20 token on the Ethereum blockchain using OpenZeppelin's ERC20 implementation. The contract includes functionalities for token creation, management by an admin, and token transfer and destruction.

## Description

The `ParthToken` contract extends the ERC20 standard and includes:
- Initialization of token name ("Parth") and symbol ("PRT") during deployment.
- An admin address that has exclusive rights to mint tokens to specified addresses (`createTokens`).
- A function to burn tokens (`destroyTokens`) owned by the caller.

This contract demonstrates fundamental ERC20 token functionalities such as minting, burning, and ownership management.

## Getting Started

### Executing Program

To interact with this contract, follow these steps using Remix, an online Solidity IDE:

1. **Access Remix:**
   - Go to [Remix IDE](https://remix.ethereum.org/).

2. **Create and Save File:**
   - Click on the "+" icon in the left-hand sidebar to create a new file.
   - Save the file with a .sol extension (e.g., `ParthToken.sol`).

3. **Compile Code:**
   - Switch to the "Solidity Compiler" tab in Remix.
   - Set the "Compiler" option to "0.8.0" (or another compatible version).
   - Click on "Compile ParthToken.sol" to compile the contract.

4. **Deploy Contract:**
   - Navigate to the "Deploy & Run Transactions" tab in Remix.
   - Select the "ParthToken" contract from the dropdown menu.
   - Click on the "Deploy" button to deploy the contract.

5. **Interact with Contract:**
   - Once deployed, interact with the contract:
     - Use the `createTokens` function to mint tokens to a recipient address.
     - Use the `destroyTokens` function to burn tokens owned by the caller.

