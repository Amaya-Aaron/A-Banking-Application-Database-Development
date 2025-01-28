CREATE DATABASE Bak;
USE Bak;

CREATE TABLE Customer(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    contact_number VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
);
insert into Customer (customer_id, first_name, last_name, address, contact_number, email)
VALUES
(1, 'John', 'Doe', '123 Main St, Anytown', '123-456-7890', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '456 Elm St, Othertown', '987-654-3210', 'jane.smith@example.com'),
(3, 'Michael', 'Johnson', '789 Oak St, Anycity', '555-123-4567', 'michael.johnson@example.com');

CREATE TABLE Branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    location VARCHAR(255) NOT NULL,
    manager_id INT
);
INSERT INTO Branch (branch_id, branch_name, location, manager_id)
VALUES
(1, 'Main Branch', '123 Main St, Anytown', 1),
(2, 'Downtown Branch', '456 Elm St, Othertown', 2),
(3, 'Westside Branch', '789 Oak St, Anycity', 3);

CREATE TABLE Employee(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    contact_information VARCHAR(255) NOT NULL,
    role_designation VARCHAR(50) NOT NULL,
    branch_id INT
);
INSERT INTO Employee (employee_id, employee_name, contact_information, role_designation, branch_id)
VALUES
(1, 'Manager One', '111-222-3333', 'Manager', 1),
(2, 'Teller One', '444-555-6666', 'Teller', 2),
(3, 'Loan Officer One', '777-888-9999', 'Loan Officer', 3);

CREATE TABLE Accounts(
    account_id INT PRIMARY KEY,
    account_type VARCHAR(50) NOT NULL,
    balance DECIMAL(15, 2) NOT NULL,
    open_date DATE NOT NULL,
    branch_id INT NOT NULL
);
INSERT INTO Accounts (account_id, account_type, balance, open_date, branch_id)
VALUES
(101, 'Savings', 5000.00, '2023-01-15', 1),
(102, 'Checking', 2500.00, '2023-02-20', 2),
(103, 'Savings', 10000.00, '2023-03-10', 3);

CREATE TABLE Account_Customer(
    account_id INT,
    customer_id INT,
    PRIMARY KEY (account_id, customer_id)
);
INSERT INTO Account_Customer (account_id, customer_id)
VALUES
(101, 1),
(102, 2),
(103, 3);

CREATE TABLE Transactions(
    transaction_id INT PRIMARY KEY,
    transaction_type VARCHAR(50) NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    transaction_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    account_id INT
);
INSERT INTO Transactions (transaction_id, transaction_type, amount, transaction_date, account_id)
VALUES
(201, 'Deposit', 1000.00, '2024-03-25 10:00:00', 101),
(202, 'Withdrawal', 200.00, '2024-03-26 14:30:00', 102),
(203, 'Transfer', 500.00, '2024-03-27 09:45:00', 103);

CREATE TABLE Loan(
    loan_id INT PRIMARY KEY,
    loan_type VARCHAR(50) NOT NULL,
    principal_amount DECIMAL(15, 2) NOT NULL,
    interest_rate DECIMAL(5, 2) NOT NULL,
    start_date DATE NOT NULL,
    maturity_date DATE NOT NULL,
    branch_id INT,
    customer_id INT
);
INSERT INTO Loan (loan_id, loan_type, principal_amount, interest_rate, start_date, maturity_date, branch_id, customer_id)
VALUES
(301, 'Personal Loan', 15000.00, 7.5, '2023-05-10', '2024-05-10', 1, 1),
(302, 'Auto Loan', 20000.00, 6.0, '2023-07-20', '2024-07-20', 2, 2),
(303, 'Home Loan', 100000.00, 5.0, '2023-09-30', '2043-09-30', 3, 3);


CREATE TABLE Users(
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password_users VARCHAR(255) NOT NULL,
    role_users VARCHAR(50) NOT NULL,
    employee_id INT,
    customer_id INT
);
INSERT INTO Users (user_id, username, password_users, role_users, employee_id, customer_id)
VALUES
(1, 'manager1', 'password123', 'Manager', 1, NULL),
(2, 'teller1', 'password456', 'Teller', 2, NULL),
(3, 'loanofficer1', 'password789', 'Loan Officer', 3, NULL);



CREATE TABLE User_Privilege(
    privilege_id INT PRIMARY KEY,
    user_id INT,
    resource_type VARCHAR(50) NOT NULL,
    resource_id INT,
    access_level VARCHAR(20) NOT NULL
);
INSERT INTO User_Privilege (privilege_id, user_id, resource_type, resource_id, access_level)
VALUES
(1, 1, 'Branch', 1, 'Full Access'),
(2, 2, 'Accounts', 101, 'Read Only'),
(3, 3, 'Loan', 301, 'Full Access');



alter table Branch
add foreign key  (manager_id) REFERENCES Employee(employee_id)
;

alter table Employee
add FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
;

alter table Accounts 
add  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
;
alter table Account_Customer
add  FOREIGN KEY (account_id) REFERENCES Accounts(account_id),
add FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
;
alter table Transactions 
add  FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
;

alter table Loan
add  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id),
add  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
;

alter table Users
add FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
add FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
;

alter table User_Privilege
 add  foreign key (user_id) REFERENCES Users(user_id)
;






