/*
Problem: 1934_Confirmation_Rate
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select s.user_id,
    round(iif(count(c.action)=0 , 0 , 1.0*sum(iif(c.action='confirmed', 1 , 0)) /count(c.action)),2)as confirmation_rate
from Signups s left join Confirmations c
on s.user_id=c.user_id
group by s.user_id