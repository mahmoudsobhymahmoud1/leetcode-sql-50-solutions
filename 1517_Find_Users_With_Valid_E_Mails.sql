/*
Problem: 1517_Find_Users_With_Valid_E_Mails
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

SELECT *
FROM Users
WHERE mail COLLATE Latin1_General_CS_AS LIKE '%@leetcode.com'
AND LEFT(mail,1) LIKE '[A-Za-z]'
AND PATINDEX(
        '%[^A-Za-z0-9_.-]%',
        LEFT(mail,LEN(mail)-13)
    ) = 0;