/*
Problem: 1204_Last_Person_to_Fit_in_the_Bus
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select top 1 person_name
from(
    select *
    from(
        select *,sum(Weight)over(order by Turn)as'Total_Weight'
        from Queue)as n1
    where Total_Weight<=1000) as newTable
order by turn desc