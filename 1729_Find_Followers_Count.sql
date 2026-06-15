/*
Problem: 1729_Find_Followers_Count
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select user_id,count(follower_id)as'followers_count'
from Followers
group by user_id