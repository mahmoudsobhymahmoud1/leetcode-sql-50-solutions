/*
Problem: 1527_Patients_With_a_Condition
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select patient_id,patient_name,conditions
from Patients
where substring(conditions,1,5)='DIAB1'or conditions like '% DIAB1%'