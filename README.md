Database Schema:
Authors:

AuthorID (Primary Key)
AuthorName
AuthorBio
Books:

BookID (Primary Key)
Title
ISBN
PublishedDate
Price
Genre
AuthorID (Foreign Key referencing Authors)
Customers:

CustomerID (Primary Key)
FirstName
LastName
Email
Phone
Orders:

OrderID (Primary Key)
CustomerID (Foreign Key referencing Customers)
OrderDate
TotalAmount
OrderDetails:

OrderDetailID (Primary Key)
OrderID (Foreign Key referencing Orders)
BookID (Foreign Key referencing Books)
Quantity
Subtotal
Relationships:
Each book is written by one author, and each author can have multiple books (One-to-Many relationship between Authors and Books).
Each order is associated with one customer, but a customer can have multiple orders (One-to-Many relationship between Customers and Orders).
Each order can have multiple books, and each book can be part of multiple orders (Many-to-Many relationship between Orders and Books using OrderDetails).
Constraints:
Foreign key constraints to maintain referential integrity.
Unique constraints on ISBN for books.
Validation constraints for ensuring non-negative quantities and prices.
