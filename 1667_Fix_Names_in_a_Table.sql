/*
Problem: 1667_Fix_Names_in_a_Table
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select user_id,concat(upper(substring(name,1,1)),lower(substring(name,2,len(name))))as 'name'
from users
order by user_id