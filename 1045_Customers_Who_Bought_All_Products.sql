/*
Problem: 1045_Customers_Who_Bought_All_Products
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select c.customer_id--,count(distinct c.product_key)
from Customer c
group by c.customer_id 
having count(distinct c.product_key)=(select count(p.product_key)from Product p)