/*
Problem: 550_Game_Play_Analysis_IV
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select round(1.0*count(*)/(select count(distinct player_id)from Activity),2) as fraction from(select a.player_id,min(a.event_date)as mn from Activity a group by a.player_id)as new inner join Activity a
on new.player_id=a.player_id and a.event_date=dateadd(day,1,new.mn)