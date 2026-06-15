/*
Problem: 1581_Customer_Who_Visited_but_Did_Not_Make_Any_Transactions
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select v.customer_id,count(v.customer_id) as 'count_no_trans'
from Visits v left join Transactions t
on v.visit_id=t.visit_id 
where t.visit_id is null
group by customer_id