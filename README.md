# SimpleStorage Solidity Contract

This repository contains a Solidity smart contract called `SimpleStorage`. The contract is a basic example that demonstrates various Solidity concepts such as variables, structs, arrays, and mappings. It also includes functions to store and retrieve values, as well as add new people to an array.

## Contract Details

- SPDX-License-Identifier: MIT
- Solidity Version: >=0.6.0 < 0.9.0

### Variables

- `favNum`: An unsigned integer variable initialized to 0.

### Struct

- `People`: A struct that defines a new type consisting of two fields: `favNum` of type `uint256` and `name` of type `string`.

### Arrays

- `people`: A dynamic array of type `People[]` that stores a list of `People` objects.

### Mapping

- `nameToFavoriteNumber`: A mapping that associates a `string` name with a `uint256` favorite number.

### Initial Person

- `person`: An instance of the `People` struct with the initial values of `favNum` as 5 and `name` as "Osman".

### Functions

- `store(uint256 _favNum)`: Allows storing a new value in the `favNum` variable.

- `retrieve()`: Returns the current value stored in the `favNum` variable.

- `addPerson(string memory _name, uint256 _favNum)`: Adds a new person to the `people` array and associates their name with their favorite number in the `nameToFavoriteNumber` mapping.

## Usage

To interact with the `SimpleStorage` contract, you can use any Ethereum-compatible development environment or blockchain network.

### Prerequisites

- Solidity development environment (e.g., Remix, Truffle, Hardhat)
- Ethereum wallet or provider

### Deployment

1. Compile the contract using the appropriate Solidity compiler version (>=0.6.0 < 0.9.0).

2. Deploy the contract to the desired Ethereum network or local development blockchain.

3. Once deployed, you can interact with the contract by calling its functions.

### Interacting with the Contract

1. Use the `store` function to set a new value for `favNum`.

2. Use the `retrieve` function to retrieve the current value of `favNum`.

3. Use the `addPerson` function to add a new person to the `people` array and associate their name with their favorite number in the `nameToFavoriteNumber` mapping.

## License

This Solidity script is licensed under the MIT License. Please see the [LICENSE](LICENSE) file for more information.

**Note:** The SPDX-License-Identifier is provided as a standard way to specify the license within the code.
