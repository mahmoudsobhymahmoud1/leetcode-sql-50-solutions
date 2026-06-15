/*
Problem: 196_Delete_Duplicate_Emails
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

delete p1
from person p1,person p2
where p1.email=p2.email and p1.id>p2.id