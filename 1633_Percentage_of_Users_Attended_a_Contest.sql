/*
Problem: 1633_Percentage_of_Users_Attended_a_Contest
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select r.contest_id,round(count(u.user_id)*100.0/(select count(u.user_id)from users u),2) as percentage
from Users u,Register r
where u.user_id=r.user_id
group by r.contest_id
order by percentage desc,r.contest_id