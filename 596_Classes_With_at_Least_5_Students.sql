/*
Problem: 596_Classes_With_at_Least_5_Students
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select class--,count(student)
from courses
group by class
having count(student)>=5