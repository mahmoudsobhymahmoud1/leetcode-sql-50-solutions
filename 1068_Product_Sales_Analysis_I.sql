/*
Problem: 1068_Product_Sales_Analysis_I
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select product_name , year  , price
from Sales s,Product p
where s.product_id=p.product_id