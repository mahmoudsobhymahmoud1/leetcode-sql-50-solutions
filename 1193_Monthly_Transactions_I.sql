/*
Problem: 1193_Monthly_Transactions_I
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select format(trans_date,'yyyy-MM')as month,
        country,
        count(state)as trans_count,
        sum(iif(state='approved',1,0))as approved_count,
        sum(amount)as trans_total_amount,
        sum(iif(state='approved',amount,0))as approved_total_amount
        

from Transactions
group by format(trans_date,'yyyy-MM'),country
