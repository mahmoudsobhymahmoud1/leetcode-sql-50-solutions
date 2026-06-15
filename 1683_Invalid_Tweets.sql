/*
Problem: 1683_Invalid_Tweets
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select tweet_id
from Tweets 
where len(content)>15