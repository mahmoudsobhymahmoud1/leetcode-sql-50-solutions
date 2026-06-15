/*
Problem: 1148_Article_Views_I
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select distinct author_id as id 
from views
where author_id=viewer_id
order by author_id