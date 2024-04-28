DECLARE @i INT
SET @i = 10;

WHILE @i > 0
	BEGIN
		USE MyWebDB;
		DECLARE @j INT
		SET @j = 10;
		DECLARE @name varchar(30)
		SET @name = '';
		
		WHILE @j > 0
			BEGIN
			SET @name = CONCAT(@name, CHAR(FLOOR(CAST(RAND(@i*@j)*1000000 AS INT)%100)));
			SET @j = @j - 1
			END;
		PRINT @name	
		INSERT Items VALUES (NEWID(), @name)
		SET @i = @i - 1
	END;