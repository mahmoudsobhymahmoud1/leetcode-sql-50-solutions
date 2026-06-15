/*
Problem: 570_Managers_with_at_Least_5_Direct_Reports
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select x.name--,count(y.managerId)
from Employee x left join Employee y
on x.id=y.managerId 
group by x.name,y.managerId
having count(y.managerId)>=5