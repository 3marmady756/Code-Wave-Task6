CREATE TRIGGER PreventDepartmentInsert
ON Departments
INSTEAD OF INSERT
AS
BEGIN
    PRINT 'You cannot insert new records into the Department table.';
    ROLLBACK TRANSACTION;
END;