/*
Problem: 1141_User_Activity_for_the_Past_30_Days_I
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select activity_date as day,count(distinct user_id)as active_users
from Activity
where activity_date>='2019-06-28' and activity_date<='2019-07-27'
group by activity_date