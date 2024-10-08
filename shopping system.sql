---------------------------Create tables---------------------------------------
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerAddress VARCHAR(255),
    CustomerPhoneNo VARCHAR(15)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Location VARCHAR(100),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    ProductPrice FLOAT,
    ProductQuantity INT
);


CREATE TABLE OrderProduct (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    PaymentDate DATE,
    TransactionDetails VARCHAR(255),
    AmountPaid FLOAT,
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


CREATE TABLE CashPayment (
    PaymentID INT PRIMARY KEY,
    FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
);


CREATE TABLE CardPayment (
    PaymentID INT PRIMARY KEY,
    CardName VARCHAR(100),
    CardType VARCHAR(50),
    CardNumber VARCHAR(20),
    ExpDate DATE,
    FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
);


CREATE TABLE ChequePayment (
    PaymentID INT PRIMARY KEY,
    Name VARCHAR(100),
    AccountNo VARCHAR(20),
    NameOfTheBank VARCHAR(100),
    Branch VARCHAR(100),
    FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
);





-------------------Insert into Customers--------------------------------------

INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(1, 'Alice Johnson', '123 Maple St', '555-1010');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(2, 'Bob Smith', '456 Oak St', '555-1020');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(3, 'Charlie Brown', '789 Pine St', '555-1030');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(4, 'Diana Prince', '321 Birch St', '555-1040');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(5, 'Ethan Hunt', '654 Cedar St', '555-1050');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(6, 'Fiona Apple', '987 Elm St', '555-1060');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(7, 'George Clooney', '147 Willow St', '555-1070');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(8, 'Harry Potter', '258 Ash St', '555-1080');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(9, 'Isabella Swan', '369 Fir St', '555-1090');
INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
VALUES(10, 'Jack Sparrow', '741 Spruce St', '555-1100');





--------------------------------Insert into Products------------------------------------

INSERT INTO Products (ProductID, ProductName, ProductPrice, ProductQuantity)
VALUES (1, 'Product A', 10.99, 100);
INSERT INTO Products (ProductID, ProductName, ProductPrice, ProductQuantity)
VALUES (2, 'Product B', 15.49, 200);
INSERT INTO Products (ProductID, ProductName, ProductPrice, ProductQuantity)
VALUES (3, 'Product C', 7.99, 150);
INSERT INTO Products (ProductID, ProductName, ProductPrice, ProductQuantity)
VALUES (4, 'Product D', 12.75, 300);
INSERT INTO Products (ProductID, ProductName, ProductPrice, ProductQuantity)
VALUES (5, 'Product E', 9.50, 250);




--------------------------------Insert into Orders----------------------------------------
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(1, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'New York', 1);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(2,TO_DATE('2024-01-12','YYYY-MM-DD'), 'Los Angeles', 2);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(3,TO_DATE('2024-01-15','YYYY-MM-DD'), 'Chicago', 3);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(4,TO_DATE('2024-01-20','YYYY-MM-DD'), 'Houston', 4);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(5,TO_DATE('2024-01-25','YYYY-MM-DD'), 'Phoenix', 5);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(6,TO_DATE('2024-01-30','YYYY-MM-DD'), 'Philadelphia', 6);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(7, TO_DATE('2024-02-01','YYYY-MM-DD'), 'San Antonio', 7);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(8,TO_DATE('2024-02-05','YYYY-MM-DD'), 'San Diego', 8);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(9, TO_DATE('2024-02-10','YYYY-MM-DD'), 'Dallas', 9);
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES(10,TO_DATE('2024-02-15','YYYY-MM-DD'), 'San Jose', 10)




--------------------------Insert into OrderProduct----------------------------------

INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
VALUES (1, 1, 1);
       
INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
VALUES(1, 2, 2); 
       
INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
VALUES(2, 3, 1); 
      
INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
VALUES (2, 4, 4); 
      
INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
VALUES (3, 1, 2);  
      
INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
VALUES (3, 2, 1);  
      
INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
VALUES (4, 5, 3);



--------------------------Insert into Payments------------------------------------------
INSERT INTO Payments (PaymentID, PaymentDate, TransactionDetails, AmountPaid, OrderID)
VALUES (7, TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'Credit Card Payment', 800.75, 2);

INSERT INTO Payments (PaymentID, PaymentDate, TransactionDetails, AmountPaid, OrderID)
VALUES (8, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 'Cash Payment', 500.00, 3);

INSERT INTO Payments (PaymentID, PaymentDate, TransactionDetails, AmountPaid, OrderID)
VALUES (9, TO_DATE('2024-10-02', 'YYYY-MM-DD'), 'Cheque Payment', 1000.50, 4);

INSERT INTO Payments (PaymentID, PaymentDate, TransactionDetails, AmountPaid, OrderID)
VALUES (10, TO_DATE('2024-10-03', 'YYYY-MM-DD'), 'Credit Card Payment', 1500.00, 5);

INSERT INTO Payments (PaymentID, PaymentDate, TransactionDetails, AmountPaid, OrderID)
VALUES (11, TO_DATE('2024-10-04', 'YYYY-MM-DD'), 'Credit Card Payment', 600.50, 6);





---------------------------Insert into CardPayment-----------------------------------
INSERT INTO CardPayment (PaymentID, CardName, CardType, CardNumber, ExpDate)
VALUES (1, 'John Doe', 'VISA', '1234-5678-9876-5432', '2026-12-31');
       (2, 'Alice Smith', 'MasterCard', '9876-5432-1234-5678', '2027-05-15'),
       (3, 'Robert Johnson', 'VISA', '1111-2222-3333-4444', '2026-08-12'),
       (4, 'Emily Davis', 'American Express', '4444-3333-2222-1111', '2025-11-30'),
       (5, 'Michael Brown', 'MasterCard', '6666-5555-4444-3333', '2026-07-20'),
       (6, 'Sarah Wilson', 'VISA', '7777-8888-9999-0000', '2027-03-14');


----------------------------Alter table queries------------------------------------------
ALTER TABLE Customers
ADD Email VARCHAR(100);

ALTER TABLE Customers
DROP COLUMN Email;


----------------------------Drop query---------------------------------------------
DROP DATABASE system;


---------------------------Rename querry------------------------------------------
RENAME customers to customer;



---------------------------Truncate query-------------------------------------------
Truncate TABLE customer;



--------------------------Select query-----------------------------------------------
SELECT * FROM Orders;
SELECT * From Customers;



------------------------Update query----------------------------------------------------
UPDATE Customers
SET CustomerAddress = '456 Oak Street', CustomerPhoneNo = '555-1234'
WHERE CustomerID = 1;



---------------------------Delete query------------------------------------------------
DELETE FROM Orders
WHERE CustomerID = 10;


-----------------------------Grant query--------------------------------------------
CREATE USER user1 IDENTIFIED BY password1;
GRANT SELECT, INSERT, UPDATE ON Customers TO user1;


------------------------------Revoke query--------------------------------------------
GRANT INSERT ON Payments TO user1;
REVOKE INSERT ON Payments FROM user1;


-------------------------------Commit query-------------------------------------------
INSERT INTO Orders (OrderID, OrderDate, Location, CustomerID)
VALUES (1, TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'New York', 1);
COMMIT;


-------------------------------Rollback query----------------------------------------------
UPDATE Products
SET ProductPrice = 1499.99
WHERE ProductID = 1;
ROLLBACK;


----------------------------------Savepoint query-----------------------------------------

SAVEPOINT before_update;

UPDATE Customers
SET CustomerName = 'Jane Doe'
WHERE CustomerID = 1;

ROLLBACK TO before_update;

COMMIT;



-------------------------------Joins queries-----------------------------------------------------
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName, Customers.CustomerPhoneNo
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


SELECT Orders.OrderID, Products.ProductName, OrderProduct.Quantity
FROM Orders
JOIN OrderProduct ON Orders.OrderID = OrderProduct.OrderID
JOIN Products ON OrderProduct.ProductID = Products.ProductID;




------------------------------------------Subqueries---------------------------------------------------

SELECT CustomerName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);


