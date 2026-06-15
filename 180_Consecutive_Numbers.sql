/*
Problem: 180_Consecutive_Numbers
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

/*  Using multi self joins
select distinct a.num as'ConsecutiveNums'
from logs a,logs b,logs c
where a.id>=3  and b.id=a.id-1 and b.num=a.num   and c.id=a.id-2 and c.num=a.num
*/

/* Using lag
select distinct num as ConsecutiveNums
from(
    select num,
            lag(num,1)over(order by id)as prevNum1,
            lag(num,2)over(order by id)as prevNum2
    from Logs   
)newTable
where num=prevNum1 and num=prevNum2
*/


select distinct num as ConsecutiveNums
from(
    select num,
            lead(num,1)over(order by id)as prevNum1,
            lead(num,2)over(order by id)as prevNum2
    from Logs   
)newTable
where num=prevNum1 and num=prevNum2

