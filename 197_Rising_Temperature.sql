/*
Problem: 197_Rising_Temperature
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select x.id
from Weather x,Weather y
where x.recordDate=(select DATEADD(dd, 1, y.recordDate)) and y.temperature<x.temperature
--order by y.recordDate