// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract EmployeeSalaryTracker {

    struct EmployeeDetails {
        string name;
        uint salary;
        address WalletAddress;
        string gender;
     }

    mapping (string => mapping (string => EmployeeDetails)) public employee_salary;

    function addEmployee(string memory _department, string memory name, uint256 _salary, address  _walletAddress ,string memory _gender) public {
        employee_salary[_department][name] = EmployeeDetails(name, _salary, _walletAddress, _gender);
    }
    function updateSalary(string memory _department, string memory _name, uint256 _newSalary) public {
       EmployeeDetails storage employees = employee_salary[_department][_name];

       employees.salary = _newSalary;
    }
    

}
