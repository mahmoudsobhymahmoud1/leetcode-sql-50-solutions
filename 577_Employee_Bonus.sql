/*
Problem: 577_Employee_Bonus
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select e.name,b.bonus
from Employee e left join Bonus b
on e.empId=b.empId 
where b.bonus<1000 or b.empId is null