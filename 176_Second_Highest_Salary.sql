/*
Problem: 176_Second_Highest_Salary
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

/*select(
    select distinct salary
    from(
        select * ,dense_rank()over(order by salary desc)as dr
        from Employee
        )newTable
    where dr=2
) as 'SecondHighestSalary'*/


select max(salary) as 'SecondHighestSalary'
from Employee
where salary<(
    select max(salary)
    from Employee
)