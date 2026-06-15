/*
Problem: 1327_List_the_Products_Ordered_in_a_Period
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select p.product_name,t.sumOfUnits as 'unit'
from
    (select product_id,sum(unit) as 'sumOfUnits'
    from Orders
    where order_date>='2020-02-01' and order_date<'2020-03-01'
    group by product_id
    having sum(unit)>=100)t
join  Products p
on p.product_id=t.product_id