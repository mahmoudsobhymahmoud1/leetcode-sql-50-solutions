/*
Problem: 2356_Number_of_Unique_Subjects_Taught_by_Each_Teacher
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select teacher_id,count(distinct subject_id)as cnt
from teacher
group by teacher_id