/*
Problem: 1978_Employees_Whose_Manager_Left_the_Company
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select y.employee_id
from Employees y
where y.salary<30000 and y.manager_id is not null and (select count(employee_id) from Employees where y.manager_id=employee_id)=0
order by y.employee_id