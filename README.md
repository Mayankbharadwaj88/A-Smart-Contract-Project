# Solver Smart Contract

I have a created a smart contract 'Solver' which explains the working of three functions that is revert,require and assert.These functions improve the readability of contract code

## Contract Description

The `solver` contract is designed to:
- Manage an owner address that is set upon contract deployment.
- Allow setting a value within specific constraints.
- Include functions restricted to the owner.
- Demonstrate use of `require`, `assert`, and `revert` statements.

## Functions

### Public Variables

- `address public owner`: The address of the contract owner.
- `uint256 public value`: A value managed by the contract.
- `uint256 public maximumValue`: The maximum allowed value, initialized to 100.

### Constructor

The constructor initializes the contract:
- Sets the `owner` to the address that deploys the contract.
- Initializes `value` to 0.
- Sets `maximumValue` to 100.

### setValue(uint256 newValue)

Allows setting the `value` to a new value with the following constraint:
- `newValue` must be greater than 10.

### restrictedFunction()

A function that can only be called by the owner of the contract.

### exceed()

A function to assert that the current `value` does not exceed `maximumValue`.

### conditionalRevert(bool shouldRevert)

A function that reverts the transaction intentionally if `shouldRevert` is true.

## Usage

### Deployment

Deploy the contract using [Remix IDE](https://remix.ethereum.org/):

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file and paste the Solidity code.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract from the "Deploy & Run Transactions" tab.

### Interaction

Interact with the deployed contract using the "Deploy & Run Transactions" tab in Remix IDE:

1. **Set Value:**
   - Locate the `setValue` function in the deployed contract interface.
   - Enter a value greater than 10 in the input field.
   - Click on the `transact` button to set the new value.

2. **Restricted Function:**
   - Locate the `restrictedFunction` in the deployed contract interface.
   - Click on the `call` button to execute the function (ensure you are the owner).

3. **Exceed Check:**
   - Locate the `exceed` function in the deployed contract interface.
   - Click on the `call` button to check if the value exceeds the maximum value.

4. **Conditional Revert:**
   - Locate the `conditionalRevert` function in the deployed contract interface.
   - Enter `true` or `false` in the input field.
   - Click on the `transact` button to intentionally revert the transaction if `true` is provided.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

This contract is developed by [Mayank Bhardwaj]. Feel free to reach out to me on mayankbhardwaj8894@gmail.com

