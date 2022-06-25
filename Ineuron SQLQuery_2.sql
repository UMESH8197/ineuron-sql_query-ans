--  2. List department name, and the number of employees hired in each department
-- year-wise.

SELECT distinct EmployeeDepartmentHistory.DepartmentID, Department.NAME ,  EmployeeDepartmentHistory. BusinessEntityID as no_of_emp_hire
FROM [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory] 
JOIN [AdventureWorks2019].[HumanResources].[Department] 
on EmployeeDepartmentHistory.DepartmentID = Department.DepartmentID 