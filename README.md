# A-Banking-Application-Database-Development
In this project, you are asked by a bank to create a database for a console-based banking application to manage branch, account, employee, customer, transaction, loan, system user and user privilege information. Here are the business requirements that you have been given:
(a) Branch Management:
§ The system should support the creation, update, and deletion of bank branches.
§ Each branch should have a unique identifier, name, location, and manager.
§ A branch can have one and only one manager.
§ A branch can have multiple accounts associated with it.
§ Each account must belong to exactly one branch.
(b) Bank Account Management:
§ The system should allow the creation, update, and deletion of bank accounts.
§ Each account should have a unique identifier, account type (e.g., savings, current),
balance, and open date.
§ Transactions made on each account should be recorded and updated in real-time.
§ An account can be associated with only one branch.
(c) Customer Management:
§ The system should enable the management of customer accounts, including personal
information and contact details.
§ Each customer should have a unique identifier, first name, last name, address, contact
number, and email address.
§ A customer can have multiple accounts associated with them.
§ Each account must belong to exactly one customer.
(d) Employee Management:
§ The system should support the management of bank employees, including their
personal details and roles within the organization.
§ Each employee should have a unique identifier, name, contact information, and role
designation (e.g., teller, manager).
§ An employee can work at only one branch.
§ Each branch can have multiple employees associated with it.
(e) Transaction Management:
§ The system should facilitate the processing of various types of transactions, including
deposits, withdrawals, transfers, and balance inquiries.
§ Transactions should be securely processed and recorded in the system, ensuring data
integrity and accuracy.
§ Each transaction should be associated with exactly one account.
§ Each account can have multiple transactions associated with it.
(f) Loan Management:
§ The system should allow the creation, update, and deletion of loan accounts.
§ Each loan account should have a unique identifier, loan type, principal amount,
interest rate, start date, and maturity date.
§ Loan payments should be recorded and updated in the system, with support for partial
payments and interest calculations.
§ A loan account can be associated with only one branch.
§ Each branch can have multiple loan accounts associated with it.
§ Each loan account should be associated with exactly one customer
(g) User Management:
§ The system should allow the management of user accounts for accessing the banking
application.
§ Both bank employee and customer can register as an user in the application.
§ Each user should have a unique username and password for authentication.
§ Users should be assigned roles and permissions based on their responsibilities within
the organization.
§ Each bank employee or customer can only register as one and only one user in the
application.
§ Roles may include customer and employee.
(h) User Privilege Management:
§ The system should include a user privilege table to manage access rights for different
users.
§ Both bank employee and customer can log into this application, and as the users of
the application, they have different roles.
§ User roles may include:
o Employee: Bank employees responsible for managing accounts, transactions,
and other administrative tasks.
o Customer: Individuals who hold accounts with the bank and have limited
access to their own account information and transaction history.
§ Each user privilege record should specify the user, the resource (e.g., branch, account,
transaction), and the level of access (e.g., read-only, read-write).
