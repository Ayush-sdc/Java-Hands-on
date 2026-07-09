```sql
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Age NUMBER,
    Balance NUMBER(12, 2),
    IsVIP VARCHAR2(5)
);

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    LoanAmount NUMBER(12, 2),
    InterestRate NUMBER(5, 2),
    DueDate DATE,
    
    CONSTRAINT fk_customer
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);


INSERT INTO Customers
VALUES (1, 'Amit Sharma', 65, 15000, 'FALSE');

INSERT INTO Customers
VALUES (2, 'Rahul Verma', 45, 8000, 'FALSE');

INSERT INTO Customers
VALUES (3, 'Sunita Patel', 70, 25000, 'FALSE');

INSERT INTO Customers
VALUES (4, 'Priya Singh', 35, 12000, 'FALSE');

INSERT INTO Customers
VALUES (5, 'Ramesh Kumar', 62, 5000, 'FALSE');


INSERT INTO Loans
VALUES (101, 1, 500000, 8.5, SYSDATE + 15);

INSERT INTO Loans
VALUES (102, 2, 300000, 9.0, SYSDATE + 45);

INSERT INTO Loans
VALUES (103, 3, 700000, 7.5, SYSDATE + 10);

INSERT INTO Loans
VALUES (104, 4, 200000, 10.0, SYSDATE + 25);

INSERT INTO Loans
VALUES (105, 5, 400000, 8.0, SYSDATE + 60);


COMMIT;


SELECT * FROM Customers;

SELECT * FROM Loans;
```
