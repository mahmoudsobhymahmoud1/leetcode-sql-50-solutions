/*
Problem: 585_Investments_in_2016
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select round(sum(tiv_2016),2) as tiv_2016
from Insurance i
where tiv_2015 in (
        select tiv_2015
        from Insurance
        group by tiv_2015
        having count(tiv_2015)>1) and 
       
       exists(
        select 1
        from Insurance x
        where x.lat=i.lat and x.lon=i.lon
        group by x.lat,x.lon
        having count(*)=1)