USE MyWebDB;

CREATE TABLE OrderItems
(
Id uniqueidentifier NOT NULL PRIMARY KEY,
OderId uniqueidentifier NOT NULL FOREIGN KEY references Orders(Id),
ItemId uniqueidentifier NOT NULL FOREIGN KEY references Items(Id),
Price numeric(5,2) NOT NULL,
Quantity int NOT NULL
)