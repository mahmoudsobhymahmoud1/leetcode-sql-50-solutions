/*
Problem: 185_Department_Top_Three_Salaries
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select Department,Employee,Salary
from
    (select *,dense_rank()over (partition by Department order by Salary desc)as dr
    from 
        (select d.name as 'Department',e.name as 'Employee',e.salary as 'Salary'
        from employee e,department d
        where d.id=e.departmentId)t
    )newTable
where dr<=3