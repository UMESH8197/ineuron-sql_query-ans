--   3. List the person and their country region name who is not an employee and their
-- name starts with the character āSā.

select firstname  FROM [AdventureWorks2019].[Person].[Person] 
where firstname like 's%'