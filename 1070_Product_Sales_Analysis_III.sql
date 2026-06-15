/*
Problem: 1070_Product_Sales_Analysis_III
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select s.product_id,s.year as 'first_year',s.quantity,s.price
from sales s inner join(
    select product_id,min(year)as 'first_year'
    from sales 
    group by product_id
)newTable
on s.product_id=newTable.product_id and s.year=newTable.first_year