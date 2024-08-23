// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ScholarshipDistribution {
    address public admin;
    uint256 public totalScholarshipFund;
    uint256 public scholarshipAmount;

    struct Student {
        uint256 studentId;
        string name;
        uint256 gpa;
        uint256 familyIncome;
        address payable studentAddress;
        bool isEligible;
        bool hasReceivedScholarship;
    }

    mapping(uint256 => Student) public students;
    uint256[] public eligibleStudentIds;

    event ScholarshipFunded(uint256 amount);
    event ScholarshipAwarded(uint256 indexed studentId, uint256 amount);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
        scholarshipAmount = 1000; // initial scholarship amount
    }

    function fundScholarship() public payable onlyAdmin {
        totalScholarshipFund += msg.value;
        emit ScholarshipFunded(msg.value);
    }

    function registerStudent(
        uint256 _studentId,
        string memory _name,
        uint256 _gpa,
        uint256 _familyIncome,
        address payable _studentAddress
    ) public onlyAdmin {
        require(students[_studentId].studentId == 0, "Student already registered");

        students[_studentId] = Student({
            studentId: _studentId,
            name: _name,
            gpa: _gpa,
            familyIncome: _familyIncome,
            studentAddress: _studentAddress,
            isEligible: false,
            hasReceivedScholarship: false
        });
    }

    function checkEligibility(uint256 _studentId) public onlyAdmin {
        Student storage student = students[_studentId];

        require(student.studentId != 0, "Student not registered");

        // Example criteria: GPA > 3.5 and Family Income < 50000
        if(student.gpa * 10 > 35 && student.familyIncome < 50000) { // gpa*10/10 = 3.5
    student.isEligible = true;
    eligibleStudentIds.push(_studentId);
}
    }

    function distributeScholarships() public onlyAdmin {
        require(totalScholarshipFund >= scholarshipAmount * eligibleStudentIds.length, "Not enough funds");

        for (uint256 i = 0; i < eligibleStudentIds.length; i++) {
            uint256 studentId = eligibleStudentIds[i];
            Student storage student = students[studentId];

            if (student.isEligible && !student.hasReceivedScholarship) {
                student.hasReceivedScholarship = true;
                student.studentAddress.transfer(scholarshipAmount);
                totalScholarshipFund -= scholarshipAmount;
                emit ScholarshipAwarded(studentId, scholarshipAmount);
            }
        }
    }

    function withdrawRemainingFunds() public onlyAdmin {
        payable(admin).transfer(address(this).balance);
    }
}

