/*
Problem: 1075_Project_Employees_I
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select p.project_id,iif(count(e.employee_id)is null,0,round(sum(e.experience_years)*1.0/count(e.employee_id),2)) as average_years
from Project p left join employee e
on p.employee_id=e.employee_id
group by p.project_id
