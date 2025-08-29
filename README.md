# Simple Storage Suite

> This Solidity project demonstrates on-chain storage, inheritance with overrides, and the factory pattern. It was built and deployed using Remix IDE on the Sepolia testnet as part of a blockchain learning journey.  
> [Remix IDE](https://remix.ethereum.org)

## Contracts Overview

### 1) **SimpleStorage.sol**  
> Base contract to store a number and maintain a small people registry using an array and a mapping.  
- `store(uint256 _favoriteNumber)` saves a number in contract storage.  
- `retrieve()` returns the last stored number (view function).  
- `addPerson(string _name, uint256 _age)` adds a person with name and age.  
- Public variables: `ListOfPeoples` (array), `NAMEtoAGE` (mapping).  

### 2) **StorageFactory.sol**  
> Contract factory that deploys multiple SimpleStorage instances and interacts with them by index.  
- `createSimpleStorageContract()` deploys a new SimpleStorage and stores the address in an array.  
- `sfStore(uint256 index, uint256 value)` calls `store` on the specified deployed SimpleStorage instance.  
- `sfGet(uint256 index)` retrieves the stored number from the selected instance.  
- This contract imports SimpleStorage and manages multiple instances from one place.  

### 3) **AddFiveStorage.sol**  
> Child contract that inherits from SimpleStorage and overrides the store function.  
- `store(uint256 _newNumber)` stores `_newNumber + 5` instead of the raw input, demonstrating inheritance and function overriding.  

---

## How to Use (Remix IDE)

1. **Open Remix IDE**  
Open [Remix IDE](https://remix.ethereum.org) in your browser and add or clone the repository files.  

2. **Compile Contracts**  
Go to the Solidity Compiler tab, select version 0.8.8 (or compatible 0.8.x), and compile all three contracts (`SimpleStorage.sol`, `StorageFactory.sol`, `AddFiveStorage.sol`).  

3. **Deploy Contracts**  
- Option A: Deploy `SimpleStorage.sol`  
  Use `store` to save a number and `retrieve` to read it. Use `addPerson(name, age)` to add people.  
- Option B: Deploy `StorageFactory.sol`  
  Call `createSimpleStorageContract()` multiple times to deploy instances. Use `sfStore(index, value)` to store a number in a specific instance and `sfGet(index)` to retrieve it.  
- Option C: Deploy `AddFiveStorage.sol`  
  Use `store(number)` — this saves `number + 5` automatically. For example, `store(10)` saves 15.  

---

## How They Work Together

- `SimpleStorage` is the base contract for storing numbers and people data.  
- `StorageFactory` manages multiple `SimpleStorage` contracts by deploying and interacting with instances.  
- `AddFiveStorage` inherits from `SimpleStorage` and overrides the store function to save the input plus 5.  

---

## Deployment Notes (Sepolia Testnet)

- Install MetaMask and connect it to the Sepolia testnet.  
- Obtain free test ETH from a faucet to cover gas fees.  
- In Remix, select "Injected Provider - MetaMask" as the environment.  
- Deploy contracts and approve transactions in MetaMask.  
- Verify deployed contracts and transactions on Sepolia Etherscan.  

---

## Summary

- Demonstrates Solidity storage techniques using arrays, structs, and mappings.  
- Shows how to deploy and manage multiple contracts via a factory pattern.  
- Illustrates inheritance and function overriding with a simple +5 modification example.  

---

## Useful Links

- [Remix IDE](https://remix.ethereum.org)  
- [Solidity Docs: Contract Structure](https://docs.soliditylang.org/en/latest/structure-of-a-contract.html)  
- [Solidity Docs: Style Guide](https://docs.soliditylang.org/en/latest/style-guide.html)  
- [Storage Factory Tutorial](https://dev.to/muratcanyuksel/creating-a-storage-factory-smart-contract-in-solidity-and-interacting-with-it-notes-from-freecodecamp-phh)  
- [Deploy to Sepolia Guide](https://docs.alchemy.com/docs/how-to-deploy-a-smart-contract-to-the-sepolia-testnet)  

---



