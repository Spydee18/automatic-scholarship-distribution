# Scholarship Distribution Smart Contract
<img width="332" alt="image" src="https://github.com/user-attachments/assets/c69e472c-53e7-4255-b494-6583e51636af">

## Vision
The Scholarship Distribution Smart Contract is designed to facilitate transparent, secure, and automated distribution of scholarship funds to eligible students. By leveraging blockchain technology, the contract ensures that scholarships are allocated fairly based on predefined criteria, reducing administrative overhead and eliminating the possibility of fraud.

## Features
- **Admin Control:** The admin has exclusive rights to fund the scholarship, register students, assess eligibility, and distribute funds.
- **Student Registration:** Allows the admin to register students with their GPA, family income, and Ethereum address.
- **Eligibility Assessment:** Automatically determines scholarship eligibility based on GPA and family income.
- **Automated Distribution:** Distributes funds to eligible students securely, ensuring fairness and transparency.
- **Fund Management:** The admin can withdraw any remaining funds after all scholarships have been distributed.

## Flowchart
```
+-----------------+        +---------------------+        +-------------------------+
|   Admin Funds   | -----> |   Register Student  | -----> |   Check Eligibility     |
|   Scholarship   |        |   (Admin Action)    |        |   (Admin Action)        |
+-----------------+        +---------------------+        +-------------------------+
                                                               |
                                                               |
                                                               v
+-----------------+        +---------------------+        +-------------------------+
| Distribute      | -----> |   Student Receives  | -----> | Withdraw Remaining Funds|
| Scholarship     |        |   Scholarship       |        |   (Admin Action)        |
| (Admin Action)  |        |   (Automated)       |        |                         |
+-----------------+        +---------------------+        +-------------------------+
```

## Contract Address
- **Network:** EDU CHAIN
- **Contract Address:** 0xfb4f18cbdc09ee040f8eed611397bda04428e6ac
- <img width="598" alt="image" src="https://github.com/user-attachments/assets/7afe1d9f-5dee-401c-9ed8-3a342d9e6f9b">


## Deployment Instructions
1. Deploy the contract on the Ethereum blockchain using a development environment like Remix or Hardhat.
2. Fund the contract by calling the `fundScholarship` function.
3. Register students with their details using the `registerStudent` function.
4. Check each student's eligibility through the `checkEligibility` function.
5. Distribute scholarships by calling the `distributeScholarships` function.
6. Withdraw any remaining funds using the `withdrawRemainingFunds` function.

## Future Scope
- **Automated Verification:** Integrate APIs or oracles for real-time verification of student GPA and family income.
- **Multiple Scholarship Programs:** Extend the contract to support different scholarship programs with varying criteria.
- **Decentralized Decision-Making:** Implement a DAO model for community-driven decisions on scholarship distribution.
- **Student Appeals:** Introduce a feature that allows students to appeal eligibility decisions via decentralized voting.

## Contact Information
For any queries or further information, please contact:
- **Name:** Mijanur Rahman
- **Email:** mijanurrahman5804m@gmail.com
- **GitHub:** https://github.com/Spydee18
- **linkdln** https://www.linkedin.com/in/mijanur-rahman-347507324/

## License
This project is licensed under the MIT License. See the `LICENSE` file for more information.
