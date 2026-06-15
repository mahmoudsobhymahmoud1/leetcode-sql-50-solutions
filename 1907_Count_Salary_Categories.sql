/*
Problem: 1907_Count_Salary_Categories
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select 'Low Salary' as 'category',count(*) as 'accounts_count'
from Accounts
where income<20000

union all

select 'Average Salary',count(*)
from Accounts
where income>=20000 and income<=50000

union all

select 'High Salary',count(*)
from Accounts
where income>50000

/*
select *,
        case
        when income<20000 then 'ls'
        when income>=20000 and income<50000 then 'as'
        when income>=50000 then 'hs'
        end
from Accounts
*/