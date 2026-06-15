/*
Problem: 1341_Movie_Rating
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

with newTable1 as
(select top (1) u.name as results
from MovieRating r,Users u
where r.user_id=u.user_id
group by u.name,u.user_id
order by count(*)desc,u.name)

,newTable2 as
(select top (1) m.title as results
from MovieRating r,Movies m
where r.movie_id=m.movie_id and r.created_at >= '2020-02-01'
and r.created_at < '2020-03-01'--format(r.created_at,'yyyy-MM')='2020-02'
group by r.movie_id,m.title
order by avg(r.rating*1.0)desc,m.title)

select results from newTable1
union all
select results from newTable2