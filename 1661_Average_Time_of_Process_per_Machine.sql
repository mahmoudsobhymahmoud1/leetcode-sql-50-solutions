/*
Problem: 1661_Average_Time_of_Process_per_Machine
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select x.machine_id,(round(avg(x.timestamp-y.timestamp),3))as 'processing_time'
from Activity x,Activity y
where y.machine_id=x.machine_id and y.process_id=x.process_id and y.activity_type='start'and x.activity_type='end'
group by x.machine_id