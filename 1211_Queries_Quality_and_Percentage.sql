/*
Problem: 1211_Queries_Quality_and_Percentage
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select query_name,round(avg(1.0*rating/position),2) as quality
       ,round(sum(iif(rating<3,1,0))* 100.0/count(query_name),2) as poor_query_percentage
from Queries
group by query_name

/*select round(sum(iif(rating<3,1,0))* 100.0/count(query_name),2)
from Queries
group by query_name*/

/*select count(position)
from Queries
where rating<3
group by query_name*/

/*select count(query_name)
from Queries
group by query_name*/