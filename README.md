# Simple Storage Smart Contract

This repository contains a basic Solidity smart contract called `SimpleStorage`. It allows storing people's ages and their names, using arrays, structs, and mappings.

The contract was deployed on the Sepolia Ethereum testnet as part of my blockchain learning journey.

## Features

- Store an age for each person
- Link names to ages
- Use of Solidity structs and mappings
- Written in Solidity version 0.8.8
- Deployed using Remix IDE

## How to Use

Follow these simple steps to run this contract on Remix IDE:

1. **Open Remix IDE**  
   Go to [https://remix.ethereum.org](https://remix.ethereum.org) in your web browser.

2. **Import Code from GitHub**  
   - Click the **Git** icon on the left panel.  
   - Choose **Clone repository**.  
   - Paste this URL: `https://github.com/ALOENT/Simple-Storage.git`  
   - Click **Clone** and then return to the **File Explorer** to view all files.

3. **Compile the Contract**  
   - Click the **Solidity Compiler** icon .  
   - Select latest compiler version (or the one specified in the contract).  
   - Click **Compile SimpleStorage.sol**.

4. **Deploy the Contract**  
   - Open the **Deploy & Run Transactions** tab (Ethereum diamond icon).  
   - Set **Environment** to any **Remix VM** for easy use without MetaMask, or **Injected Web3** to connect MetaMask and deploy on Sepolia testnet.
   - Choose `SimpleStorage` from the **Contracts** dropdown.  
   - Click **Deploy**.  
   - If using MetaMask, approve the transaction.

5. **Interact with the Contract**  
   - After deployment, you will see contract functions below.
   - Click on **SIMPLESTORAGE** at the bottom. 
   - To add a person, use `addperson(name, age)`. For example:  
     `"John", 25` or `John, 25`. 
   - Use `ListOfPeoples(index)` to get stored people's age and name by index (like `0`, `1`, etc.).  
   - Use `NAMEtoAGE(name)` to get a person's age by their name. for eg- `John` 

## Notes on Real Testnet Deployment

To deploy this contract on a real testnet like Sepolia, you will need:  
- A MetaMask account connected to the desired testnet.  
- Some testnet ETH from a faucet to pay for gas fees.  
- Connect your MetaMask account with Remix IDE by selecting **Injected Provider - MetaMask** as the environment.  
- After connecting, you can deploy the contract on the real testnet.
- And can check transactions on etherscan. 

---

Feel free to explore and reach out if you have questions or suggestions!
