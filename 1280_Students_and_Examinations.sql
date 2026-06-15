/*
Problem: 1280_Students_and_Examinations
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

/*select s.student_id,s.student_name,e.subject_name,count(e.subject_name)as'attended_exams'
from Students s,Examinations e
where s.student_id=e.student_id
group by s.student_id,s.student_name,e.subject_name
order by s.student_id,s.student_name*/

select s.student_id,s.student_name,j.subject_name,count(e.subject_name)as'attended_exams'
from Students s cross join Subjects j left join Examinations e
on e.student_id=s.student_id and e.subject_name=j.subject_name
group by s.student_id,s.student_name,j.subject_name
order by s.student_id,j.subject_name