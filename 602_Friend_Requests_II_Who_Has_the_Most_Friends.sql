/*
Problem: 602_Friend_Requests_II_Who_Has_the_Most_Friends
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select top 1 id,count(*)as 'num'
from
    (select requester_id as id
    from RequestAccepted
    union all
    select accepter_id as id
    from RequestAccepted)newTable
group by id
order by num desc