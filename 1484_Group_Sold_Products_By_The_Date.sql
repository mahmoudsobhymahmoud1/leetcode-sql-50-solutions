/*
Problem: 1484_Group_Sold_Products_By_The_Date
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select sell_date,
        count(distinct product) as 'num_sold',
        string_agg(product,',') within group (order by product) as 'products'
from (
    select distinct sell_date,product
    from Activities
)newTable
group by sell_date
order by sell_date