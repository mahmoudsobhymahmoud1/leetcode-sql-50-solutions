/*
Problem: 1378_Replace_Employee_ID_With_The_Unique_Identifier
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select eu.unique_id,e.name
from Employees e left join EmployeeUNI eu
on e.id=eu.id