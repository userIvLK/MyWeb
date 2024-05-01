USE MyWebDB;

CREATE TABLE PurchasePrice
(
Id uniqueidentifier NOT NULL PRIMARY KEY,
ItemId uniqueidentifier NOT NULL FOREIGN KEY references Items(Id),
PriceDate date NOT NULL,
Price numeric(5,2) NOT NULL
)