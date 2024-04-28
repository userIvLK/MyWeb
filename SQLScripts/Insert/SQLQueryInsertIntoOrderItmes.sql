USE MyWebDB;


DECLARE @id1 uniqueidentifier; 
DECLARE @id2 uniqueidentifier; 
DEClARE @price INT;
DEClARE @quantity INT;

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 1 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 1 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 2 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 2 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 3 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 3 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 4 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 4 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 5 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 5 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 6 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 6 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 7 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 7 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 1 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 1 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 8 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 8 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 9 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 9 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);

SELECT @id1 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 10 * FROM Orders ORDER BY Customer ASC) AS Orders1 ORDER BY Customer DESC) AS Orders2
SELECT @id2 = Id FROM (SELECT TOP 1 * FROM (SELECT TOP 10 * FROM Items ORDER BY Name ASC) AS Items1 ORDER BY Name DESC) AS Items2
SET @price = CAST(RAND()*1000000 AS INT)%100 + 1
SET @quantity = CAST(RAND()*1000000 AS INT)%100 + 1
INSERT OrderItems VALUES (NEWID(), @id1, @id2, @price, @quantity);