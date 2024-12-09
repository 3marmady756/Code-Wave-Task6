CREATE PROCEDURE CalculateSumOfRange
    @Start INT,
    @End INT
AS
BEGIN
    DECLARE @Sum INT = 0;
    DECLARE @Current INT = @Start;
    
    WHILE @Current <= @End
    BEGIN
        SET @Sum = @Sum + @Current;
        SET @Current = @Current + 1;
    END;

    PRINT 'The sum of numbers in the range is: ' + CAST(@Sum AS VARCHAR(50));
END;