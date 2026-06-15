/*
Problem: 1757_Recyclable_and_Low_Fat_Products
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select product_id
from Products
where recyclable='Y'and low_fats='Y'