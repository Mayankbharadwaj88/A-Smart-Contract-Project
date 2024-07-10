# Healthcare Data Management System

The HealthcareDataManagement contract is designed to manage patient records in a secure and decentralized manner using Ethereum's blockchain. The contract includes functionality for adding, retrieving, and removing patient records, with built-in error handling mechanisms to ensure data integrity and security.

## Key Features

- **Add Patient Records**: Allows the addition of new patient records with mandatory fields such as patient ID, name, and medical history. Utilizes `require` statements to ensure the validity of input data.
- **Retrieve Medical Records**: Provides a way to fetch the medical history of a patient using their ID. Uses `assert` statements to confirm that the patient record is active.
- **Remove Patient Records**: Facilitates the removal of patient records. Uses `revert` statements to handle cases where the patient ID does not exist or the record is already inactive.

## Error Handling

- **`require`**: Ensures that inputs meet specific criteria before executing the function logic, preventing invalid data from being processed.
- **`assert`**: Verifies conditions that should always be true, indicating a serious error if they fail.
- **`revert`**: Provides a way to halt execution and revert state changes if certain conditions are not met, allowing for custom error messages.

## Functions

### `addPatient`

```solidity
function addPatient(uint256 _id, string memory _name, string memory _medicalhistory) external {
    require(_id > 0, "Patient ID must be greater than zero.");
    require(bytes(_name).length > 0, "Patient name cannot be empty.");
    
    patients[_id] = Patient({
        name: _name,
        medicalhistory: _medicalhistory,
        isActive: true
    });
}
```
### `getMedicalRecord`
```solidity
function getMedicalRecord(uint256 _id) external view returns (string memory) {
        assert(patients[_id].isActive); 
        
        return patients[_id].medicalhistory;
    }

```
### `removePatient`
 ```solidity
 function removePatient(uint256 _id) external {
        if (!patients[_id].isActive) {
            revert("Patient ID does not exist");
        }
        
        delete patients[_id];
    }
}
```

### Deployment

Deploy the contract using [Remix IDE](https://remix.ethereum.org/):

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file and paste the Solidity code.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract from the "Deploy & Run Transactions" tab.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

This contract is developed by [Mayank Bhardwaj]. Feel free to reach out to me on mayankbhardwaj8894@gmail.com

