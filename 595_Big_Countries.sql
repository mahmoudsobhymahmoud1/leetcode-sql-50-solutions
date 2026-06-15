/*
Problem: 595_Big_Countries
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select name, population,area
from world
where area>=3000000 or population>=25000000