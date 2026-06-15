/*
Problem: 619_Biggest_Single_Number
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select isnull((
    select top 1 num
    from MyNumbers
    group by num
    having count(num)=1
    order by num desc
    ),null)as num