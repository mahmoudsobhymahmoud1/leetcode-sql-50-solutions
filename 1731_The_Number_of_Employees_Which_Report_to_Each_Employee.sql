/*
Problem: 1731_The_Number_of_Employees_Which_Report_to_Each_Employee
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select y.employee_id,y.name,count(x.employee_id)as 'reports_count'
        ,round(avg(1.0*x.age),0)as'average_age'
from Employees x,Employees y
where y.employee_id=x.reports_to
group by y.employee_id,y.name
order by y.employee_id