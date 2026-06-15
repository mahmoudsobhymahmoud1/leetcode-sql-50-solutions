/*
Problem: 620_Not_Boring_Movies
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select id,movie,description,rating
from Cinema
where id%2=1 and description != 'boring'
order by rating desc