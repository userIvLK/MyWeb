USE MyWebDB;

DECLARE @id uniqueidentifier;
DEClARE @price INT;

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 1 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 2 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 3 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 4 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 5 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 6 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 7 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 8 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 9 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);

SELECT @id = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 10 * FROM Items ORDER BY Name ASC) AS Items ORDER BY Name DESC) AS Items
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT PurchasePrice VALUES (NEWID(), @id, GETDATE(), @price);