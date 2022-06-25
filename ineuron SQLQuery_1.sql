SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Employee]

-- 1. List the month name and number of employees hired in each month and ignore the
-- year factor
-- Note: Two different years but the same month's hired employee count should be
-- summed together to get the total of employees hired in the respective month.

select month(hiredate) , count(*)
 FROM [AdventureWorks2019].[HumanResources].[Employee] 
 group by month(HireDate) 

--  2. List department name, and the number of employees hired in each department
-- year-wise.

SELECT distinct EmployeeDepartmentHistory.DepartmentID, Department.NAME ,  EmployeeDepartmentHistory. BusinessEntityID as no_of_emp_hire
FROM [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory] 
JOIN [AdventureWorks2019].[HumanResources].[Department] 
on EmployeeDepartmentHistory.DepartmentID = Department.DepartmentID 

--   3. List the person and their country region name who is not an employee and their
-- name starts with the character “S”.

select firstname  FROM [AdventureWorks2019].[Person].[Person] 
where firstname like 's%'


-- 5. Use Product and TransactionHistory table to show productid, product name, the
-- cumulative sum of actual cost based on the transaction date and communication sum
-- of the quantity column on the transaction date, transaction date.

  select productID, name FROM [AdventureWorks2019].[Production].[Product] 