CREATE PROCEDURE CalculateCircleArea
    @Radius FLOAT
AS
BEGIN
    DECLARE @Area FLOAT;
    SET @Area = PI() * POWER(@Radius, 2);
    PRINT 'The area of the circle is: ' + CAST(@Area AS VARCHAR(50));
END;