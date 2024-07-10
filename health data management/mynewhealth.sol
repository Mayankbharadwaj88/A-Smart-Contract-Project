// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HealthcareDataManagement {
    
    struct Patient {
        string name;
        string medicalhistory;
        bool isActive;
    }
    
    mapping(uint256 => Patient) public patients;

    
    function addPatient(uint256 _id, string memory _name, string memory _medicalhistory) external {
        require(_id > 0, "Patient ID must be greater than zero.");
        require(bytes(_name).length > 0, "Patient name cannot be empty.");
        
        patients[_id] = Patient({
            name: _name,
            medicalhistory: _medicalhistory,
            isActive: true
        });
    }


    
    function getMedicalRecord(uint256 _id) external view returns (string memory) {
        assert(patients[_id].isActive); 
        
        return patients[_id].medicalhistory;
    }


    function removePatient(uint256 _id) external {
        if (!patients[_id].isActive) {
            revert("Patient ID does not exist");
        }
        
        delete patients[_id];
    }
}
