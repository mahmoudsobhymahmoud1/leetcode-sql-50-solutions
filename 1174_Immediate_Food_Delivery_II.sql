/*
Problem: 1174_Immediate_Food_Delivery_II
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select round(100.0*count(*)/(select count (distinct customer_id)from Delivery),2) as immediate_percentage from
(select *,row_number()over(partition by customer_id order by order_date) as RN
from delivery)as newTable
where RN=1 and order_date=customer_pref_delivery_date