CREATE PROCEDURE GetStudentsPerDepartment
AS
BEGIN
    SELECT 
        Departments.DepartmentName,
        COUNT(Students.StudentID) AS NumberOfStudents
    FROM 
        Departments
    JOIN 
        Students ON Departments.DepartmentID = Students.DepartmentID
    GROUP BY 
        Departments.DepartmentName;
END;