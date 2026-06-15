/*
Problem: 1251_Average_Selling_Price
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select p.product_id,iif(sum(s.units) is null,0,round(sum(p.price*s.units*1.0)/sum(s.units),2)) as average_price
--sum(p.price*s.units*1.0),sum(s.units)
from Prices p left join UnitsSold s
on s.purchase_date between p.start_date and p.end_date and p.product_id=s.product_id
group by p.product_id