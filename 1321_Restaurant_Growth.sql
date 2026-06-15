/*
Problem: 1321_Restaurant_Growth
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

with salesForEveryDay as(
    select visited_on,sum(amount)as Amount
    from Customer
    group by visited_on
)

select visited_on,amount,round(1.0*amount/7,2)as average_amount
from(
    select visited_on,
            sum(amount)over(order by visited_on
                        rows between 6 preceding and current row)as amount
            ,row_number()over(order by visited_on)as rn
    from salesForEveryDay
)as newTable
where rn>=7
order by visited_on