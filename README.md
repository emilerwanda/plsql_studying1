 Shopping System Database

This project is a simple relational database system designed for a shopping platform. The system manages customer information, orders, products, payments, and payment methods such as cash, card, and cheque. The database is built using SQL and is structured with several tables to organize the necessary data for a shopping system.

 Database Structure

1. Customers
Stores customer details such as ID, name, address, and phone number.
- Fields:
  - `CustomerID` (Primary Key)
  - `CustomerName`
  - `CustomerAddress`
  - `CustomerPhoneNo`

2. Orders
Tracks orders placed by customers, including the date, location, and the customer who placed the order.
- Fields:
  - `OrderID` (Primary Key)
  - `OrderDate`
  - `Location`
  - `CustomerID` (Foreign Key referencing `Customers`)

3. Products
Maintains a list of products available for purchase, including name, price, and quantity.
- Fields:
  - `ProductID` (Primary Key)
  - `ProductName`
  - `ProductPrice`
  - `ProductQuantity`

4. OrderProduct
A junction table linking orders with products and recording the quantity of each product in a given order.
- Fields:
  - `OrderID` (Primary Key, Foreign Key referencing `Orders`)
  - `ProductID` (Primary Key, Foreign Key referencing `Products`)
  - `Quantity`

5. Payments
Manages payment transactions for orders.
- Fields:
  - `PaymentID` (Primary Key)
  - `PaymentDate`
  - `TransactionDetails`
  - `AmountPaid`
  - `OrderID` (Foreign Key referencing `Orders`)

6. CashPayment
Handles payments made via cash.
- Fields:
  - `PaymentID` (Primary Key, Foreign Key referencing `Payments`)

 7. CardPayment
Handles payments made via card, including card details like card name, type, number, and expiration date.
- Fields:
  - `PaymentID` (Primary Key, Foreign Key referencing `Payments`)
  - `CardName`
  - `CardType`
  - `CardNumber`
  - `ExpDate`

 8. ChequePayment
Handles payments made via cheque, including account details and bank information.
- Fields:
  - `PaymentID` (Primary Key, Foreign Key referencing `Payments`)
  - `Name`
  - `AccountNo`
  - `NameOfTheBank`
  - `Branch`

 Key Features

- Modular Design: The database is divided into related tables for better organization and scalability.
- Supports Multiple Payment Methods: Payment tables are structured to handle different types of payments: cash, card, and cheque.
- Referential Integrity: Foreign keys ensure that orders and payments are always linked to valid customers and products.
  
 SQL Operations

- Insert: Adds customer and order records to the system.
- Update: Updates customer information such as address and phone number.
- Delete: Removes order records when a customer cancels an order.
- Select: Retrieves information from the database for reporting and display.

 How to Use

1. Create the necessary tables in your database by running the provided SQL scripts.
2. Insert sample data into the `Customers`, `Orders`, and other tables as per the script.
3. Execute various queries to interact with the data, such as inserting new orders, updating customer details, or deleting cancelled orders.

 Example Queries

- Insert new customer:
  sql
  INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNo)
  VALUES(11, 'John Doe', '123 Cherry Lane', '555-1111');
"# repo_pl_studying1" 
