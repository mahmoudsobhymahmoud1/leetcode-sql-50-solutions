/*
Problem: 1789_Primary_Department_for_Each_Employee
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select employee_id,department_id
from Employee
where primary_flag='Y' 
        or employee_id in(
            select employee_id
            from Employee
            group by employee_id
            having count(employee_id)=1
            )