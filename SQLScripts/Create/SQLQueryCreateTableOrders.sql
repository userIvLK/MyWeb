USE MyWebDB;

CREATE TABLE Orders
(
Id uniqueidentifier NOT NULL PRIMARY KEY,
Customer varchar(30) NOT NULL,
Orderdate date NOT NULL
)