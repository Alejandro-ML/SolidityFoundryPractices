# Hello World Smart Contract (Solidity + Foundry)

This repository is a simple **Hello World smart contract** built with **Solidity** and tested with **Foundry**.  
It demonstrates the basics of writing, deploying, and testing Ethereum smart contracts, while also showcasing good development practices.  

> 📌 **Who is this for?**  
> - **Recruiters / Reviewers:** to quickly see my Solidity and Foundry skills in action.  
> - **Developers:** as a minimal template to start experimenting with Foundry and smart contract testing.  

---

## 🛠️ Tech Stack
- **Solidity** `^0.8.24`  
- **Foundry** (Forge for testing and formatting)  
- **Hardhat** (for compatibility and future expansion)  
- GitHub Actions (CI running `forge fmt` and tests)  

---

## 📂 Project Structure
```
├── .github/           # GitHub Actions workflows (CI/CD)
├── script/            # Deployment / scripting files
├── src/               # Solidity smart contracts
│   ├── Counter.sol
│   └── HelloWorld.sol
├── test/              # Test contracts
│   ├── Counter.t.sol
│   └── HelloWorld.t.sol
├── foundry.toml       # Foundry configuration
├── foundry.lock
└── README.md
```

---

## 📜 The HelloWorld Contract
File: [`src/HelloWorld.sol`](src/HelloWorld.sol)

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract HelloWorld {
    string private message;

    constructor() {
        message = "Hello World from Foundry";
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function updateMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}
```

- Initializes with `"Hello World from Foundry"`.
- Provides a getter `getMessage()`.
- Allows updating the message with `updateMessage()`.

---

## ✅ Tests
File: [`test/HelloWorld.t.sol`](test/HelloWorld.t.sol)

- Ensures the constructor stores the default message.
- Verifies that `updateMessage` updates the state correctly.

Run tests with:
```bash
forge test
```

---

## 🚀 Getting Started

### 1. Install Foundry
If you don’t have Foundry installed:
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

### 2. Clone this repository
```bash
git clone https://github.com/Alejandro-ML/SolidityFoundryPractices.git
cd SolidityFoundryPractices
```

### 3. Run tests
```bash
forge test
```

---

## 🌟 Why this project?
This project serves as:
- A **portfolio piece** for recruiters to quickly see practical Solidity skills.  
- A **boilerplate** for developers exploring Foundry + Solidity.  
- A foundation to expand into more complex smart contracts.  

---

## 📌 Next Steps
- Add deployment scripts with Foundry and Hardhat.  
- Extend contracts with new functionality.  
- Improve CI/CD with automated tests and linting.  

---

👤 **Author:** [Alejandro-ML](https://github.com/Alejandro-ML)  
📧 `alejandromarcelolescano@gmail.com`
