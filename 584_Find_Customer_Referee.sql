/*
Problem: 584_Find_Customer_Referee
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select name
from Customer
where referee_id is null or referee_id!=2