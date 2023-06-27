# Solidity Contracts

This repository contains Solidity smart contracts that demonstrate various concepts and patterns. The contracts included are:

- [SimpleStorage](#simplestorage-solidity-contract)
- [StorageFactory](#storagefactory-solidity-contract)

## SimpleStorage Solidity Contract

The `SimpleStorage` contract is a basic example that demonstrates the usage of variables, structs, arrays, and mappings. It includes functions to store and retrieve values, as well as add new people to an array.

## StorageFactory Solidity Contract

The `StorageFactory` contract extends the functionality of the `SimpleStorage` contract by implementing factory patterns. It allows creating multiple instances of the `SimpleStorage` contract and provides functions to interact with these instances.

### Contract Details

- SPDX-License-Identifier: MIT
- Solidity Version: >=0.6.0 < 0.9.0

## Interacting with the Contract

1. Use the `createSimpleStorageContract` function to create a new instance of the `SimpleStorage` contract and add it to the `SimpleStorageArray`.

2. Use the `sfStore` function to store a new value in a specific instance of the `SimpleStorage` contract. Provide the `_simpleStorageIndex` to indicate which instance to interact with and pass the desired `_simpleStorageNumber` value.

3. Use the `sfGet` function to retrieve the current value stored in a specific instance of the `SimpleStorage` contract. Provide the `_simpleStorageIndex` to indicate which instance to interact with.


## License

This project is licensed under the MIT License. Please see the [LICENSE](LICENSE) file for more information.

**Note:** The SPDX-License-Identifier is provided as a standard way to specify the license within the code.
